<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_configuration_aggregator_sources_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns status information for sources within an aggregator

### Description

Returns status information for sources within an aggregator. The status
includes information about the last time Config verified authorization
between the source account and an aggregator account. In case of a
failure, the status contains the related error code or message.

### Usage

    configservice_describe_configuration_aggregator_sources_status(
      ConfigurationAggregatorName, UpdateStatus, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_configuration_aggregator_sources_status_:_ConfigurationAggregatorName">ConfigurationAggregatorName</code></td>
<td><p>[required] The name of the configuration aggregator.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_configuration_aggregator_sources_status_:_UpdateStatus">UpdateStatus</code></td>
<td><p>Filters the status type.</p>
<ul>
<li><p>Valid value FAILED indicates errors while moving data.</p></li>
<li><p>Valid value SUCCEEDED indicates the data was successfully
moved.</p></li>
<li><p>Valid value OUTDATED indicates the data is not the most
recent.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_configuration_aggregator_sources_status_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_configuration_aggregator_sources_status_:_Limit">Limit</code></td>
<td><p>The maximum number of AggregatorSourceStatus returned on each
page. The default is maximum. If you specify 0, Config uses the
default.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AggregatedSourceStatusList = list(
        list(
          SourceId = "string",
          SourceType = "ACCOUNT"|"ORGANIZATION",
          AwsRegion = "string",
          LastUpdateStatus = "FAILED"|"SUCCEEDED"|"OUTDATED",
          LastUpdateTime = as.POSIXct(
            "2015-01-01"
          ),
          LastErrorCode = "string",
          LastErrorMessage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_configuration_aggregator_sources_status(
      ConfigurationAggregatorName = "string",
      UpdateStatus = list(
        "FAILED"|"SUCCEEDED"|"OUTDATED"
      ),
      NextToken = "string",
      Limit = 123
    )
