<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_compliance_summary_by_config_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the number of Config rules that are compliant and noncompliant, up to a maximum of 25 for each

### Description

Returns the number of Config rules that are compliant and noncompliant,
up to a maximum of 25 for each.

### Usage

    configservice_get_compliance_summary_by_config_rule()

### Value

A list with the following syntax:

    list(
      ComplianceSummary = list(
        CompliantResourceCount = list(
          CappedCount = 123,
          CapExceeded = TRUE|FALSE
        ),
        NonCompliantResourceCount = list(
          CappedCount = 123,
          CapExceeded = TRUE|FALSE
        ),
        ComplianceSummaryTimestamp = as.POSIXct(
          "2015-01-01"
        )
      )
    )
