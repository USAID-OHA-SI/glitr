## PROJECT: glitr
## AUTHOR:  AChafetz | USAID
## PURPOSE: makeover plots for style guide
## DATE:    2020-10-25
## UPDATED:


# DEPENDENCIES ------------------------------------------------------------

library(tidyverse)
library(scales)
library(glitr)
library(ggrepel)
library(extrafont)
library(fs)
library(glue)
library(ggtext)
library(RColorBrewer)

# GLOBAL VARIABLES --------------------------------------------------------

  #create outputfolder if not created already
    dir_create("Images")

  #default Excel color palette
    pal_excel <- c("#4E81BE", "#C1514E", "#9CBB59", "#8165A3", "#4AABC5", "#F79647")

  #achievement palette
    pal_achv <- brewer.pal(5, "Spectral")

  #Excel style
    excel_style <- function(){
      theme_minimal() +
      theme(text = element_text(family = "Calibri", size = 9, color = "#595959"),
            plot.title = element_text(family = "Calibri", size = 14, hjust = .5),
            panel.background = element_blank(),
            panel.grid.major.y = element_line(color = "#D9D9D9"),
            panel.grid.minor = element_blank(),
            panel.grid.major.x = element_blank(),
            axis.ticks = element_line(color = "#D9D9D9"),
            axis.line = element_line(color = "#D9D9D9"),
            legend.position = "bottom")
    }
# LINE --------------------------------------------------------------------

#
#   glimpse(cascade)
#
#   cascade %>%
#     filter(indicator == "TX_NEW",
#            period_type == "results",
#     ) %>%
#     mutate(label = case_when(period == max(period) ~ primepartner)) %>%
#     ggplot(aes(period, value, group = primepartner, color = primepartner)) +
#     geom_line() +
#     geom_label_repel(aes(label = label))

  sel_ptnrs <- cascade %>%
    filter(indicator == "TX_NEW",
           period == "FY50Q1") %>%
    arrange(desc(value)) %>%
    slice(n = 3:7) %>%
    pull(primepartner)

  df_line <- cascade %>%
    filter(indicator == "TX_NEW",
           period_type == "results",
           primepartner %in% sel_ptnrs) %>%
    mutate(focus = primepartner == "Ursa Major",
           label = case_when(period %in% c("FY49Q1", "FY49Q4") & focus == TRUE ~ value))

  write_csv(df_line, "../../../Downloads/defaul_line.csv", na = "")

  # df_line %>%
  #   ggplot(aes(period, value, group = primepartner, color = primepartner)) +
  #   geom_line(size = 1.2) +
  #   expand_limits(y = c(0, 1400)) +
  #   scale_color_manual(values = pal_excel) +
  #   scale_y_continuous(expand = c(0, 0), breaks = seq(from = 0, to = 1400, by = 200)) +
  #   scale_x_discrete(expand = c(0, .5)) +
  #   labs(x = NULL, y = NULL, title = "Saturn Parnter Trends in TX_NEW",
  #        color = NULL
  #        ) +
  #   excel_style()
  #
  #
  # ggsave("Images/line_default.png", dpi = 300, height = 4.71, width = 7.31)


  df_line %>%
    ggplot(aes(period, value, group = primepartner, color = focus)) +
    geom_line(size = 1) +
    geom_line(data = filter(df_line, focus == TRUE), size = 1.2) +
    geom_label(aes(label = comma(label),
                   vjust = ifelse(period == "FY49Q1", 1.2, -.2)),
               label.size = 0, family = "Source Sans Pro", alpha = .6,
               na.rm = TRUE) +
    expand_limits(y = c(0, 1400)) +
    scale_color_manual(values = c("gray80", USAID_medblue)) +
    scale_y_continuous(expand = c(0, 0), labels = comma,
                       breaks = seq(from = 0, to = 1400, by = 200)) +
    scale_x_discrete(expand = c(0, .25)) +
    labs(x = NULL, y = NULL,
         title = "LARGE TREATMENT GAINS MADE BY <span style = 'color:#0067B9;'>URSA MAJOR</span> IN FY49",
         color = NULL,
         caption = glue("Source: {max(cascade$period)} MSD")
    ) +
    si_style_ygrid() +
    theme(plot.title = element_markdown(),
          legend.position = "none")

  ggsave("Images/line_remake.png", dpi = 300, height = 4.71, width = 7.31)



# BAR ---------------------------------------------------------------------


  glimpse(hts)

  hts %>%
    filter(indicator == "HTS_TST",
           period_type == "targets") %>%
    count(primepartner, wt = value, sort = TRUE)

   df_bar <- hts %>%
      filter(indicator == "HTS_TST_POS",
             period == "FY49",
             primepartner == "Auriga") %>%
     pivot_wider(names_from = period_type) %>%
     mutate(achievement = cumulative/targets,
            achievement_adj = ifelse(achievement > 1, .94, achievement),
            targets = ifelse(is.na(targets), 0, targets),
            cumulative = ifelse(is.na(cumulative), 0, cumulative),
            )

    df_bar %>%
      ggplot(aes(modality, cumulative)) +
      geom_col(fill = pal_excel[1], na.rm = TRUE) +
      geom_point(aes(y = achievement_adj*1500), shape = 23, fill = pal_excel[6], size = 3,
                 na.rm = TRUE) +
      scale_fill_manual(values = rep(pal_excel, 3)) +
      scale_y_continuous(expand = c(.005, .005), name = "Cumulative",
                         sec.axis = sec_axis(~./1500, name = "Achievement", labels = percent)) +
      labs(x = NULL, title = "Auriga HTS_TST_POS") +
      excel_style() +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))


    ggsave("Images/bar_default.png", dpi = 300, height = 4.71, width = 7.31)



    df_bar_adj <- df_bar %>%
      mutate(modality = fct_lump(modality, 5, w = targets, other_level = "All Other Modalities")) %>%
      filter(targets > 0) %>%
      group_by(period, modality) %>%
      summarise(across(c(targets, cumulative), sum, na.rm = TRUE)) %>%
      ungroup() %>%
      mutate(achievement = cumulative / targets,
             achv_flag = achievement < .9,
             modality = recode(modality,
                               "OtherPITC" = "Other PITC",
                               "TBClinic" = "TB Clinic"),
             mod_lab = glue("{modality} [{comma(cumulative, 1)}/{comma(targets, 1)}]") %>%
               fct_reorder(cumulative) %>%
               fct_relevel("All Other Modalities [890/630]", after = 0)
             )

    df_bar_adj %>%
      ggplot(aes(achievement, mod_lab, fill = achv_flag, color = achv_flag)) +
      geom_blank(aes(achievement * 1.2)) +
      geom_segment(aes(xend = 0, yend = mod_lab), size = 1, color = "gray30") +
      geom_point(shape = 21, stroke = 1.1, size = 6, color = "white") +
      geom_text(aes(label = percent(achievement, 1),
                    family = "Source Sans Pro", size = 3,
                    hjust = -.4)) +
      scale_x_continuous(expand = c(.005, .005), labels = percent,
                         breaks = seq(0, 2.5, .5)) +
      scale_fill_manual(values = c("gray30", pal_achv[1])) +
      scale_color_manual(values = c("gray30", pal_achv[1])) +
      labs(x = NULL, y = NULL,
           title = "SPECIAL ATTENTION SHOULD BE PAID TO <br>AURIGA'S <span style = 'color:#D7191C;'>OTHER PITC</span> AND <span style = 'color:#D7191C;'>PMTCT</span> ENTRY POINTS",
           subtitle = "HTS_TST_POS Achievement, sorted by cumulative results",
           caption =  glue("Source: {max(hts$period)} MSD")) +
      si_style_xgrid() +
      theme(legend.position = "none",
            plot.title = element_markdown(),
            axis.text.x = element_blank())


    ggsave("Images/bar_makeover.png", dpi = 300, height = 4.71, width = 7.31)



# STACKED BAR -------------------------------------------------------------


    glimpse(cascade)


    df_stack <- cascade %>%
      filter(indicator == "TX_NEW",
             period_type == "results")


    ptnr_sel <- df_stack %>%
      filter(period == max(period)) %>%
      slice_max(n = 9, order_by = value) %>%
      pull(primepartner)

    df_stack <- df_stack %>%
      filter(primepartner %in% ptnr_sel) %>%
      mutate(partner_fill = primepartner == "Libra")


    df_stack %>%
      ggplot(aes(period, value, fill = primepartner)) +
      geom_col() +
      # geom_text(aes(label = value)) +
      # scale_fill_manual(values = rep(pal_excel, 2), name = NULL) +
      # excel_style() +
      labs(title = "TX_NEW in Saturn Partners")

    ggsave("Images/stacked_default.png", dpi = 300, height = 4.71, width = 7.31)


    df_stack %>%
      ggplot(aes(period, value, fill = partner_fill)) +
      geom_col() +
      geom_hline(yintercept = 0) +
      facet_wrap(~factor(primepartner, ptnr_sel)) +
      scale_y_continuous(label = comma) +
      scale_x_discrete(breaks = c("FY48Q1", "FY49Q1", "FY50Q1")) +
      scale_fill_manual(values = c("gray70", USAID_medblue)) +
      labs(x = NULL, y = NULL,
           title = "<span style = 'color:#0067B9;'>LIBRA </span> SAW POSITIVE TX_NEW GROWTH IN Q1 WHILE OTHERS FALTERED",
           caption =  glue("Source: {max(hts$period)} MSD")
             ) +
      si_style_nolines() +
      theme(legend.position = "none",
            plot.title = element_markdown())

    ggsave("Images/stacked_makeover.png", dpi = 300, height = 4.71, width = 7.31)
