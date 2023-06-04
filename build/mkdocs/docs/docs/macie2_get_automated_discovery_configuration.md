<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_automated_discovery_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the configuration settings and status of automated sensitive data discovery for an account

### Description

Retrieves the configuration settings and status of automated sensitive
data discovery for an account.

### Usage

    macie2_get_automated_discovery_configuration()

### Value

A list with the following syntax:

    list(
      classificationScopeId = "string",
      disabledAt = as.POSIXct(
        "2015-01-01"
      ),
      firstEnabledAt = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      sensitivityInspectionTemplateId = "string",
      status = "ENABLED"|"DISABLED"
    )

### Request syntax

    svc$get_automated_discovery_configuration()
