<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_list_vpc_connectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of App Runner VPC connectors in your Amazon Web Services account

### Description

Returns a list of App Runner VPC connectors in your Amazon Web Services
account.

### Usage

    apprunner_list_vpc_connectors(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_list_vpc_connectors_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to include in each response (result
page). It's used for a paginated request.</p>
<p>If you don't specify <code>MaxResults</code>, the request retrieves
all available results in a single response.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_list_vpc_connectors_:_NextToken">NextToken</code></td>
<td><p>A token from a previous result page. It's used for a paginated
request. The request retrieves the next result page. All other parameter
values must be identical to the ones that are specified in the initial
request.</p>
<p>If you don't specify <code>NextToken</code>, the request retrieves
the first result page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcConnectors = list(
        list(
          VpcConnectorName = "string",
          VpcConnectorArn = "string",
          VpcConnectorRevision = 123,
          Subnets = list(
            "string"
          ),
          SecurityGroups = list(
            "string"
          ),
          Status = "ACTIVE"|"INACTIVE",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          DeletedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_vpc_connectors(
      MaxResults = 123,
      NextToken = "string"
    )
