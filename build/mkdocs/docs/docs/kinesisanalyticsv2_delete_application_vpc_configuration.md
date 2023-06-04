<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_delete_application_vpc_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a VPC configuration from a Kinesis Data Analytics application

### Description

Removes a VPC configuration from a Kinesis Data Analytics application.

### Usage

    kinesisanalyticsv2_delete_application_vpc_configuration(ApplicationName,
      CurrentApplicationVersionId, VpcConfigurationId, ConditionalToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_vpc_configuration_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of an existing application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_delete_application_vpc_configuration_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>The current application version ID. You must provide the
<code>CurrentApplicationVersionId</code> or the
<code>ConditionalToken</code>. You can retrieve the application version
ID using <code>describe_application</code>. For better concurrency
support, use the <code>ConditionalToken</code> parameter instead of
<code>CurrentApplicationVersionId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_vpc_configuration_:_VpcConfigurationId">VpcConfigurationId</code></td>
<td><p>[required] The ID of the VPC configuration to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_delete_application_vpc_configuration_:_ConditionalToken">ConditionalToken</code></td>
<td><p>A value you use to implement strong concurrency for application
updates. You must provide the <code>CurrentApplicationVersionId</code>
or the <code>ConditionalToken</code>. You get the application's current
<code>ConditionalToken</code> using <code>describe_application</code>.
For better concurrency support, use the <code>ConditionalToken</code>
parameter instead of <code>CurrentApplicationVersionId</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationARN = "string",
      ApplicationVersionId = 123
    )

### Request syntax

    svc$delete_application_vpc_configuration(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      VpcConfigurationId = "string",
      ConditionalToken = "string"
    )
