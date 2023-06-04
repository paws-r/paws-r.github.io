<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_verified_access_instance_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the logging configuration for the specified Amazon Web Services Verified Access instance

### Description

Modifies the logging configuration for the specified Amazon Web Services
Verified Access instance.

### Usage

    ec2_modify_verified_access_instance_logging_configuration(
      VerifiedAccessInstanceId, AccessLogs, DryRun, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_verified_access_instance_logging_configuration_:_VerifiedAccessInstanceId">VerifiedAccessInstanceId</code></td>
<td><p>[required] The ID of the Verified Access instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_verified_access_instance_logging_configuration_:_AccessLogs">AccessLogs</code></td>
<td><p>[required] The configuration options for Verified Access
instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_verified_access_instance_logging_configuration_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_verified_access_instance_logging_configuration_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure
idempotency of your modification request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoggingConfiguration = list(
        VerifiedAccessInstanceId = "string",
        AccessLogs = list(
          S3 = list(
            Enabled = TRUE|FALSE,
            DeliveryStatus = list(
              Code = "success"|"failed",
              Message = "string"
            ),
            BucketName = "string",
            Prefix = "string",
            BucketOwner = "string"
          ),
          CloudWatchLogs = list(
            Enabled = TRUE|FALSE,
            DeliveryStatus = list(
              Code = "success"|"failed",
              Message = "string"
            ),
            LogGroup = "string"
          ),
          KinesisDataFirehose = list(
            Enabled = TRUE|FALSE,
            DeliveryStatus = list(
              Code = "success"|"failed",
              Message = "string"
            ),
            DeliveryStream = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_verified_access_instance_logging_configuration(
      VerifiedAccessInstanceId = "string",
      AccessLogs = list(
        S3 = list(
          Enabled = TRUE|FALSE,
          BucketName = "string",
          Prefix = "string",
          BucketOwner = "string"
        ),
        CloudWatchLogs = list(
          Enabled = TRUE|FALSE,
          LogGroup = "string"
        ),
        KinesisDataFirehose = list(
          Enabled = TRUE|FALSE,
          DeliveryStream = "string"
        )
      ),
      DryRun = TRUE|FALSE,
      ClientToken = "string"
    )
