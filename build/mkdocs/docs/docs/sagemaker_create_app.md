<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_app</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a running app for the specified UserProfile

### Description

Creates a running app for the specified UserProfile. This operation is
automatically invoked by Amazon SageMaker Studio upon access to the
associated Domain, and when new kernel configurations are selected by
the user. A user may have multiple Apps active simultaneously.

### Usage

    sagemaker_create_app(DomainId, UserProfileName, AppType, AppName, Tags,
      ResourceSpec, SpaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_create_app_:_DomainId">DomainId</code></td>
<td><p>[required] The domain ID.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_app_:_UserProfileName">UserProfileName</code></td>
<td><p>The user profile name. If this value is not set, then
<code>SpaceName</code> must be set.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_app_:_AppType">AppType</code></td>
<td><p>[required] The type of app.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_app_:_AppName">AppName</code></td>
<td><p>[required] The name of the app.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_app_:_Tags">Tags</code></td>
<td><p>Each tag consists of a key and an optional value. Tag keys must
be unique per resource.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_app_:_ResourceSpec">ResourceSpec</code></td>
<td><p>The instance type and the Amazon Resource Name (ARN) of the
SageMaker image created on the instance.</p>
<p>The value of <code>InstanceType</code> passed as part of the
<code>ResourceSpec</code> in the <code>create_app</code> call overrides
the value passed as part of the <code>ResourceSpec</code> configured for
the user profile or the domain. If <code>InstanceType</code> is not
specified in any of those three <code>ResourceSpec</code> values for a
<code>KernelGateway</code> app, the <code>create_app</code> call fails
with a request validation error.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_app_:_SpaceName">SpaceName</code></td>
<td><p>The name of the space. If this value is not set, then
<code>UserProfileName</code> must be set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppArn = "string"
    )

### Request syntax

    svc$create_app(
      DomainId = "string",
      UserProfileName = "string",
      AppType = "JupyterServer"|"KernelGateway"|"TensorBoard"|"RStudioServerPro"|"RSessionGateway",
      AppName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ResourceSpec = list(
        SageMakerImageArn = "string",
        SageMakerImageVersionArn = "string",
        InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.geospatial.interactive"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
        LifecycleConfigArn = "string"
      ),
      SpaceName = "string"
    )
