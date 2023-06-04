<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_flow_logs_integration_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a CloudFormation template that streamlines and automates the integration of VPC flow logs with Amazon Athena

### Description

Generates a CloudFormation template that streamlines and automates the
integration of VPC flow logs with Amazon Athena. This make it easier for
you to query and gain insights from VPC flow logs data. Based on the
information that you provide, we configure resources in the template to
do the following:

-   Create a table in Athena that maps fields to a custom log format

-   Create a Lambda function that updates the table with new partitions
    on a daily, weekly, or monthly basis

-   Create a table partitioned between two timestamps in the past

-   Create a set of named queries in Athena that you can use to get
    started quickly

### Usage

    ec2_get_flow_logs_integration_template(DryRun, FlowLogId,
      ConfigDeliveryS3DestinationArn, IntegrateServices)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_flow_logs_integration_template_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_flow_logs_integration_template_:_FlowLogId">FlowLogId</code></td>
<td><p>[required] The ID of the flow log.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_flow_logs_integration_template_:_ConfigDeliveryS3DestinationArn">ConfigDeliveryS3DestinationArn</code></td>
<td><p>[required] To store the CloudFormation template in Amazon S3,
specify the location in Amazon S3.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_flow_logs_integration_template_:_IntegrateServices">IntegrateServices</code></td>
<td><p>[required] Information about the service integration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Result = "string"
    )

### Request syntax

    svc$get_flow_logs_integration_template(
      DryRun = TRUE|FALSE,
      FlowLogId = "string",
      ConfigDeliveryS3DestinationArn = "string",
      IntegrateServices = list(
        AthenaIntegrations = list(
          list(
            IntegrationResultS3DestinationArn = "string",
            PartitionLoadFrequency = "none"|"daily"|"weekly"|"monthly",
            PartitionStartDate = as.POSIXct(
              "2015-01-01"
            ),
            PartitionEndDate = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )
