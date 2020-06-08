## PROJECT: glitr
## AUTHOR:  AChafetz | USAID
## PURPOSE: example plots
## DATE:    2020-06-01


# DEPENDENCIES ------------------------------------------------------------

library(tidyverse)
library(scales)
library(glitr)
library(extrafont)



# SCATTER PLOT ------------------------------------------------------------


  set.seed(81)
  df_scatter <-
  tibble(x = sample(150:200, 20, replace = TRUE),
         y = sample(75:125, 20, replace = TRUE),
         z = sample(1:10, 20, replace = TRUE))


  df_scatter %>%
    ggplot(aes(x, y, size = z, color = y > 100)) +
    geom_point() +
    labs(x = NULL, y = NULL,
         title = "TITLE",
         subtitle = "caption/description",
         caption = "data source") +
    si_style() +
    theme(legend.position = "none")



# LINE CHART --------------------------------------------------------------


  df_line <- cascade %>%
    filter(indicator == "TX_NEW",
           period_type == "results") %>%
    mutate(pt_start = case_when(period == min(period) ~ value),
           pt_end = case_when(period == max(period) ~ value),
           partner_focal = primepartner == "Sagittarius") %>%
    arrange(primepartner, period)

  largest_partners <- df_line %>%
    top_n(5, wt = pt_end) %>%
    pull(primepartner)

  df_line <- filter(df_line, primepartner %in% largest_partners)



  df_line %>%
    ggplot(aes(period, value, group = primepartner, color = partner_focal)) +
    geom_path(size = 1) +
    geom_point(aes(y = pt_end), shape = 21, size = 4, stroke = 1.5, fill = "white", na.rm = TRUE) +
    geom_point(aes(y = pt_start, fill = partner_focal), shape = 21, size = 4, na.rm = TRUE) +
    geom_text(aes(y = pt_end, label = primepartner), na.rm = TRUE,
              family = "Source Sans Pro", nudge_x = .4) +
    labs(x = NULL, y = NULL,
         title = "TITLE",
         subtitle = "caption/description",
         caption = "data source") +
    scale_x_discrete(expand = expansion(add = 1)) +
    si_style() +
    theme(legend.position = "none")


# BAR CHART ---------------------------------------------------------------


  df_bar <- cascade %>%
    filter(operatingunit == "Saturn",
           indicator == "TX_NEW",
           period == "FY50") %>%
    group_by(primepartner, period, period_type) %>%
    summarise(value = sum(value, na.rm = TRUE)) %>%
    ungroup() %>%
    spread(period_type, value) %>%
    mutate(targets_q1 = targets * .25) %>%
    filter(!is.na(targets_q1))

  set.seed(23)

  agency <-
    tibble(fundingagency = sample(c("USAID", "CDC"), nrow(df_bar), replace = TRUE))

  df_bar <- df_bar %>%
    bind_cols(agency, .)

  # Not sure of the geom_errorbar call and what it is doing
  df_bar %>%
    ggplot(aes(fct_reorder(primepartner, targets_q1, sum), cumulative)) +
    geom_col(aes(y = targets_q1), fill = grey10k) +
    geom_col(fill = "#AED5D9") +
    geom_errorbar(aes(ymin = targets_q1, ymax = targets_q1), color = "#62ACB5", size = 1) +
    scale_y_continuous(label = comma, expand = c(.005, .005)) +
    facet_wrap(~ fct_rev(fundingagency), scales = "free_y") +
    coord_flip() +
    labs(x = NULL, y = NULL,
         title = "TITLE",
         subtitle = "caption/description",
         caption = "data source") +
    si_style_xgrid()



# LOLLIPOP CHART ----------------------------------------------------------


  df_lollipop <- df_bar %>%
    mutate(achievement = cumulative / targets)

  df_lollipop %>%
    mutate(partner_order = tidytext::reorder_within(primepartner, achievement, agency)) %>%
    ggplot(aes(partner_order, achievement)) +
    geom_segment(aes(x = partner_order, y = 0, xend = partner_order, yend = achievement), size = .9) +
    geom_point(size = 3) +
    tidytext::scale_x_reordered() +
    scale_y_continuous(label = percent, expand = c(.005, .005)) +
    facet_wrap(~ fct_rev(fundingagency), scales = "free_y") +
    coord_flip() +
    labs(x = NULL, y = NULL,
         title = "TITLE",
         subtitle = "caption/description",
         caption = "data source") +
    si_style_xgrid()


# HEAT MAP TABLE ----------------------------------------------------------


  df_heatmap <- hts %>%
    filter(period_type == "cumulative",
           period == "FY50") %>%
    spread(indicator, value, fill = 0) %>%
    group_by(primepartner, modality) %>%
    summarise_at(vars(starts_with("HTS")), sum, na.rm = TRUE) %>%
    ungroup() %>%
    mutate(positivity = HTS_TST_POS / HTS_TST)

  df_heatmap %>%
    ggplot(aes(fct_reorder(primepartner, HTS_TST, sum, .desc = TRUE), fct_reorder(modality, positivity), fill = positivity)) +
    geom_tile(color = "white") +
    geom_text(aes(label = percent(positivity, 1)),
              family = "Source Sans Pro", color = "white", size = 3) +
    scale_x_discrete(position = "top") +
    labs(x = NULL, y = NULL,
         title = "TITLE",
         subtitle = "caption/description",
         caption = "data source") +
    si_style_nolines() +
    theme(legend.position = "none")

