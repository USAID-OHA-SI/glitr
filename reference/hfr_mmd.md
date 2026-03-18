# HFR Multi-Month Dispensing (MMD) data

Masked & subset HFR data on the MMD for Saturn Operating Unit (no
age/sex). Data sourced masked in a similar manner as the
ICPI/TrainingDataset.

## Usage

``` r
hfr_mmd
```

## Format

A data frame with 12 variables and 243 rows

- date:

  start of month for month reporting

- fiscal_year:

  current fiscal year of reporting

- hfr_pd:

  reporting period, month number in FY calendar

- operatingunit:

  PEPFAR Operating Unit

- snu1:

  PEPFAR sub national unit 1 below national level

- psnu:

  PEPFAR prioritization sub national unit

- mech_code:

  PEPFAR mechanism code

- tx_curr:

  reporting period value for patients on treatment

- tx_mmd.o3mo:

  reporting period value for patients on 3 months or more of Rx
  dispensing

- tx_mmd.u3mo:

  reporting period value for patients on under 3 months of Rx dispensing

- tx_mmd.unk:

  reporting period value for patients with unknown months of Rx
  dispensing

- share_tx_mmd.o3mo:

  reporting period share of treatment patients on 3 months or more of Rx
  dispensing
