<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_list_workspaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of Amazon Managed Grafana workspaces in the account, with some information about each workspace

### Description

Returns a list of Amazon Managed Grafana workspaces in the account, with
some information about each workspace. For more complete information
about one workspace, use `describe_workspace`.

### Usage

    managedgrafana_list_workspaces(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_list_workspaces_:_maxResults">maxResults</code></td>
<td><p>The maximum number of workspaces to include in the
results.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_list_workspaces_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of workspaces to return. (You receive
this token from a previous <code>list_workspaces</code>
operation.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      workspaces = list(
        list(
          authentication = list(
            providers = list(
              "AWS_SSO"|"SAML"
            ),
            samlConfigurationStatus = "CONFIGURED"|"NOT_CONFIGURED"
          ),
          created = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          endpoint = "string",
          grafanaVersion = "string",
          id = "string",
          modified = as.POSIXct(
            "2015-01-01"
          ),
          name = "string",
          notificationDestinations = list(
            "SNS"
          ),
          status = "ACTIVE"|"CREATING"|"DELETING"|"FAILED"|"UPDATING"|"UPGRADING"|"DELETION_FAILED"|"CREATION_FAILED"|"UPDATE_FAILED"|"UPGRADE_FAILED"|"LICENSE_REMOVAL_FAILED",
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_workspaces(
      maxResults = 123,
      nextToken = "string"
    )
