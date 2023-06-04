<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_describe_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides details about the Shield Advanced subscription for an account

### Description

Provides details about the Shield Advanced subscription for an account.

### Usage

    shield_describe_subscription()

### Value

A list with the following syntax:

    list(
      Subscription = list(
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        TimeCommitmentInSeconds = 123,
        AutoRenew = "ENABLED"|"DISABLED",
        Limits = list(
          list(
            Type = "string",
            Max = 123
          )
        ),
        ProactiveEngagementStatus = "ENABLED"|"DISABLED"|"PENDING",
        SubscriptionLimits = list(
          ProtectionLimits = list(
            ProtectedResourceTypeLimits = list(
              list(
                Type = "string",
                Max = 123
              )
            )
          ),
          ProtectionGroupLimits = list(
            MaxProtectionGroups = 123,
            PatternTypeLimits = list(
              ArbitraryPatternLimits = list(
                MaxMembers = 123
              )
            )
          )
        ),
        SubscriptionArn = "string"
      )
    )

### Request syntax

    svc$describe_subscription()
