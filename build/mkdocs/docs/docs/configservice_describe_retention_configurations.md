<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_retention_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of one or more retention configurations

### Description

Returns the details of one or more retention configurations. If the
retention configuration name is not specified, this action returns the
details for all the retention configurations for that account.

Currently, Config supports only one retention configuration per region
in your account.

### Usage

    configservice_describe_retention_configurations(
      RetentionConfigurationNames, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_retention_configurations_:_RetentionConfigurationNames">RetentionConfigurationNames</code></td>
<td><p>A list of names of retention configurations for which you want
details. If you do not specify a name, Config returns details for all
the retention configurations for that account.</p>
<p>Currently, Config supports only one retention configuration per
region in your account.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_retention_configurations_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RetentionConfigurations = list(
        list(
          Name = "string",
          RetentionPeriodInDays = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_retention_configurations(
      RetentionConfigurationNames = list(
        "string"
      ),
      NextToken = "string"
    )
