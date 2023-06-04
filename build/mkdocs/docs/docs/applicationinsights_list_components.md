<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_list_components</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the auto-grouped, standalone, and custom components of the application

### Description

Lists the auto-grouped, standalone, and custom components of the
application.

### Usage

    applicationinsights_list_components(ResourceGroupName, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_list_components_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_list_components_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>NextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_list_components_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationComponentList = list(
        list(
          ComponentName = "string",
          ComponentRemarks = "string",
          ResourceType = "string",
          OsType = "WINDOWS"|"LINUX",
          Tier = "CUSTOM"|"DEFAULT"|"DOT_NET_CORE"|"DOT_NET_WORKER"|"DOT_NET_WEB_TIER"|"DOT_NET_WEB"|"SQL_SERVER"|"SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP"|"MYSQL"|"POSTGRESQL"|"JAVA_JMX"|"ORACLE"|"SAP_HANA_MULTI_NODE"|"SAP_HANA_SINGLE_NODE"|"SAP_HANA_HIGH_AVAILABILITY"|"SQL_SERVER_FAILOVER_CLUSTER_INSTANCE"|"SHAREPOINT"|"ACTIVE_DIRECTORY",
          Monitor = TRUE|FALSE,
          DetectedWorkload = list(
            list(
              "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_components(
      ResourceGroupName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
