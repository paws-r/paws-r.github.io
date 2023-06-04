<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_configuration_aggregators</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of one or more configuration aggregators

### Description

Returns the details of one or more configuration aggregators. If the
configuration aggregator is not specified, this action returns the
details for all the configuration aggregators associated with the
account.

### Usage

    configservice_describe_configuration_aggregators(
      ConfigurationAggregatorNames, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_configuration_aggregators_:_ConfigurationAggregatorNames">ConfigurationAggregatorNames</code></td>
<td><p>The name of the configuration aggregators.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_configuration_aggregators_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_configuration_aggregators_:_Limit">Limit</code></td>
<td><p>The maximum number of configuration aggregators returned on each
page. The default is maximum. If you specify 0, Config uses the
default.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationAggregators = list(
        list(
          ConfigurationAggregatorName = "string",
          ConfigurationAggregatorArn = "string",
          AccountAggregationSources = list(
            list(
              AccountIds = list(
                "string"
              ),
              AllAwsRegions = TRUE|FALSE,
              AwsRegions = list(
                "string"
              )
            )
          ),
          OrganizationAggregationSource = list(
            RoleArn = "string",
            AwsRegions = list(
              "string"
            ),
            AllAwsRegions = TRUE|FALSE
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          CreatedBy = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_configuration_aggregators(
      ConfigurationAggregatorNames = list(
        "string"
      ),
      NextToken = "string",
      Limit = 123
    )
