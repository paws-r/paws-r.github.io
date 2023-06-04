<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_app</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the app

### Description

Describes the app.

### Usage

    sagemaker_describe_app(DomainId, UserProfileName, AppType, AppName,
      SpaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_describe_app_:_DomainId">DomainId</code></td>
<td><p>[required] The domain ID.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_describe_app_:_UserProfileName">UserProfileName</code></td>
<td><p>The user profile name. If this value is not set, then
<code>SpaceName</code> must be set.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_describe_app_:_AppType">AppType</code></td>
<td><p>[required] The type of app.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_describe_app_:_AppName">AppName</code></td>
<td><p>[required] The name of the app.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_describe_app_:_SpaceName">SpaceName</code></td>
<td><p>The name of the space.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppArn = "string",
      AppType = "JupyterServer"|"KernelGateway"|"TensorBoard"|"RStudioServerPro"|"RSessionGateway",
      AppName = "string",
      DomainId = "string",
      UserProfileName = "string",
      Status = "Deleted"|"Deleting"|"Failed"|"InService"|"Pending",
      LastHealthCheckTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      LastUserActivityTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      FailureReason = "string",
      ResourceSpec = list(
        SageMakerImageArn = "string",
        SageMakerImageVersionArn = "string",
        InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.geospatial.interactive"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
        LifecycleConfigArn = "string"
      ),
      SpaceName = "string"
    )

### Request syntax

    svc$describe_app(
      DomainId = "string",
      UserProfileName = "string",
      AppType = "JupyterServer"|"KernelGateway"|"TensorBoard"|"RStudioServerPro"|"RSessionGateway",
      AppName = "string",
      SpaceName = "string"
    )
