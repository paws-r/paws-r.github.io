<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_domain_statistics_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve inbox placement and engagement rates for the domains that you use to send email

### Description

Retrieve inbox placement and engagement rates for the domains that you
use to send email.

### Usage

    sesv2_get_domain_statistics_report(Domain, StartDate, EndDate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_domain_statistics_report_:_Domain">Domain</code></td>
<td><p>[required] The domain that you want to obtain deliverability
metrics for.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_get_domain_statistics_report_:_StartDate">StartDate</code></td>
<td><p>[required] The first day (in Unix time) that you want to obtain
domain deliverability metrics for.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_get_domain_statistics_report_:_EndDate">EndDate</code></td>
<td><p>[required] The last day (in Unix time) that you want to obtain
domain deliverability metrics for. The <code>EndDate</code> that you
specify has to be less than or equal to 30 days after the
<code>StartDate</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OverallVolume = list(
        VolumeStatistics = list(
          InboxRawCount = 123,
          SpamRawCount = 123,
          ProjectedInbox = 123,
          ProjectedSpam = 123
        ),
        ReadRatePercent = 123.0,
        DomainIspPlacements = list(
          list(
            IspName = "string",
            InboxRawCount = 123,
            SpamRawCount = 123,
            InboxPercentage = 123.0,
            SpamPercentage = 123.0
          )
        )
      ),
      DailyVolumes = list(
        list(
          StartDate = as.POSIXct(
            "2015-01-01"
          ),
          VolumeStatistics = list(
            InboxRawCount = 123,
            SpamRawCount = 123,
            ProjectedInbox = 123,
            ProjectedSpam = 123
          ),
          DomainIspPlacements = list(
            list(
              IspName = "string",
              InboxRawCount = 123,
              SpamRawCount = 123,
              InboxPercentage = 123.0,
              SpamPercentage = 123.0
            )
          )
        )
      )
    )

### Request syntax

    svc$get_domain_statistics_report(
      Domain = "string",
      StartDate = as.POSIXct(
        "2015-01-01"
      ),
      EndDate = as.POSIXct(
        "2015-01-01"
      )
    )
