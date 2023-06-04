<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_add_application_vpc_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a Virtual Private Cloud (VPC) configuration to the application

### Description

Adds a Virtual Private Cloud (VPC) configuration to the application.
Applications can use VPCs to store and access resources securely.

Note the following about VPC configurations for Kinesis Data Analytics
applications:

-   VPC configurations are not supported for SQL applications.

-   When a VPC is added to a Kinesis Data Analytics application, the
    application can no longer be accessed from the Internet directly. To
    enable Internet access to the application, add an Internet gateway
    to your VPC.

### Usage

    kinesisanalyticsv2_add_application_vpc_configuration(ApplicationName,
      CurrentApplicationVersionId, VpcConfiguration, ConditionalToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_add_application_vpc_configuration_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of an existing application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_add_application_vpc_configuration_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>The version of the application to which you want to add the VPC
configuration. You must provide the
<code>CurrentApplicationVersionId</code> or the
<code>ConditionalToken</code>. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is returned.
For better concurrency support, use the <code>ConditionalToken</code>
parameter instead of <code>CurrentApplicationVersionId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_add_application_vpc_configuration_:_VpcConfiguration">VpcConfiguration</code></td>
<td><p>[required] Description of the VPC to add to the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_add_application_vpc_configuration_:_ConditionalToken">ConditionalToken</code></td>
<td><p>A value you use to implement strong concurrency for application
updates. You must provide the <code>ApplicationVersionID</code> or the
<code>ConditionalToken</code>. You get the application's current
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
      ApplicationVersionId = 123,
      VpcConfigurationDescription = list(
        VpcConfigurationId = "string",
        VpcId = "string",
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
      )
    )

### Request syntax

    svc$add_application_vpc_configuration(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      VpcConfiguration = list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
      ),
      ConditionalToken = "string"
    )
