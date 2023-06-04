<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_describe_attack_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the number and type of attacks Shield has detected in the last year for all resources that belong to your account, regardless of whether you've defined Shield protections for them

### Description

Provides information about the number and type of attacks Shield has
detected in the last year for all resources that belong to your account,
regardless of whether you've defined Shield protections for them. This
operation is available to Shield customers as well as to Shield Advanced
customers.

The operation returns data for the time range of midnight UTC, one year
ago, to midnight UTC, today. For example, if the current time is
`⁠2020-10-26 15:39:32 PDT⁠`, equal to `⁠2020-10-26 22:39:32 UTC⁠`, then the
time range for the attack data returned is from
`⁠2019-10-26 00:00:00 UTC⁠` to `⁠2020-10-26 00:00:00 UTC⁠`.

The time range indicates the period covered by the attack statistics
data items.

### Usage

    shield_describe_attack_statistics()

### Value

A list with the following syntax:

    list(
      TimeRange = list(
        FromInclusive = as.POSIXct(
          "2015-01-01"
        ),
        ToExclusive = as.POSIXct(
          "2015-01-01"
        )
      ),
      DataItems = list(
        list(
          AttackVolume = list(
            BitsPerSecond = list(
              Max = 123.0
            ),
            PacketsPerSecond = list(
              Max = 123.0
            ),
            RequestsPerSecond = list(
              Max = 123.0
            )
          ),
          AttackCount = 123
        )
      )
    )

### Request syntax

    svc$describe_attack_statistics()
