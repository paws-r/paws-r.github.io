<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Domain used by Amazon SageMaker Studio

### Description

Creates a `Domain` used by Amazon SageMaker Studio. A domain consists of
an associated Amazon Elastic File System (EFS) volume, a list of
authorized users, and a variety of security, application, policy, and
Amazon Virtual Private Cloud (VPC) configurations. Users within a domain
can share notebook files and other artifacts with each other.

**EFS storage**

When a domain is created, an EFS volume is created for use by all of the
users within the domain. Each user receives a private home directory
within the EFS volume for notebooks, Git repositories, and data files.

SageMaker uses the Amazon Web Services Key Management Service (Amazon
Web Services KMS) to encrypt the EFS volume attached to the domain with
an Amazon Web Services managed key by default. For more control, you can
specify a customer managed key. For more information, see [Protect Data
at Rest Using
Encryption](https://docs.aws.amazon.com/sagemaker/latest/dg/encryption-at-rest.html).

**VPC configuration**

All SageMaker Studio traffic between the domain and the EFS volume is
through the specified VPC and subnets. For other Studio traffic, you can
specify the `AppNetworkAccessType` parameter. `AppNetworkAccessType`
corresponds to the network access type that you choose when you onboard
to Studio. The following options are available:

-   `PublicInternetOnly` - Non-EFS traffic goes through a VPC managed by
    Amazon SageMaker, which allows internet access. This is the default
    value.

-   `VpcOnly` - All Studio traffic is through the specified VPC and
    subnets. Internet access is disabled by default. To allow internet
    access, you must specify a NAT gateway.

    When internet access is disabled, you won't be able to run a Studio
    notebook or to train or host models unless your VPC has an interface
    endpoint to the SageMaker API and runtime or a NAT gateway and your
    security groups allow outbound connections.

NFS traffic over TCP on port 2049 needs to be allowed in both inbound
and outbound rules in order to launch a SageMaker Studio app
successfully.

For more information, see [Connect SageMaker Studio Notebooks to
Resources in a
VPC](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-notebooks-and-internet-access.html).

### Usage

    sagemaker_create_domain(DomainName, AuthMode, DefaultUserSettings,
      SubnetIds, VpcId, Tags, AppNetworkAccessType, HomeEfsFileSystemKmsKeyId,
      KmsKeyId, AppSecurityGroupManagement, DomainSettings,
      DefaultSpaceSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_domain_:_DomainName">DomainName</code></td>
<td><p>[required] A name for the domain.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_domain_:_AuthMode">AuthMode</code></td>
<td><p>[required] The mode of authentication that members use to access
the domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_domain_:_DefaultUserSettings">DefaultUserSettings</code></td>
<td><p>[required] The default settings to use to create a user profile
when <code>UserSettings</code> isn't specified in the call to the
<code>create_user_profile</code> API.</p>
<p><code>SecurityGroups</code> is aggregated when specified in both
calls. For all other settings in <code>UserSettings</code>, the values
specified in <code>create_user_profile</code> take precedence over those
specified in <code>create_domain</code>.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_domain_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] The VPC subnets that Studio uses for
communication.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_domain_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the Amazon Virtual Private Cloud (VPC) that
Studio uses for communication.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_domain_:_Tags">Tags</code></td>
<td><p>Tags to associated with the Domain. Each tag consists of a key
and an optional value. Tag keys must be unique per resource. Tags are
searchable using the <code>search</code> API.</p>
<p>Tags that you specify for the Domain are also added to all Apps that
the Domain launches.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_domain_:_AppNetworkAccessType">AppNetworkAccessType</code></td>
<td><p>Specifies the VPC used for non-EFS traffic. The default value is
<code>PublicInternetOnly</code>.</p>
<ul>
<li><p><code>PublicInternetOnly</code> - Non-EFS traffic is through a
VPC managed by Amazon SageMaker, which allows direct internet
access</p></li>
<li><p><code>VpcOnly</code> - All Studio traffic is through the
specified VPC and subnets</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_domain_:_HomeEfsFileSystemKmsKeyId">HomeEfsFileSystemKmsKeyId</code></td>
<td><p>Use <code>KmsKeyId</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_domain_:_KmsKeyId">KmsKeyId</code></td>
<td><p>SageMaker uses Amazon Web Services KMS to encrypt the EFS volume
attached to the domain with an Amazon Web Services managed key by
default. For more control, specify a customer managed key.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_domain_:_AppSecurityGroupManagement">AppSecurityGroupManagement</code></td>
<td><p>The entity that creates and manages the required security groups
for inter-app communication in <code>VPCOnly</code> mode. Required when
<code>CreateDomain.AppNetworkAccessType</code> is <code>VPCOnly</code>
and
<code>DomainSettings.RStudioServerProDomainSettings.DomainExecutionRoleArn</code>
is provided. If setting up the domain for use with RStudio, this value
must be set to <code>Service</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_domain_:_DomainSettings">DomainSettings</code></td>
<td><p>A collection of <code>Domain</code> settings.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_domain_:_DefaultSpaceSettings">DefaultSpaceSettings</code></td>
<td><p>The default settings used to create a space.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainArn = "string",
      Url = "string"
    )

### Request syntax

    svc$create_domain(
      DomainName = "string",
      AuthMode = "SSO"|"IAM",
      DefaultUserSettings = list(
        ExecutionRole = "string",
        SecurityGroups = list(
          "string"
        ),
        SharingSettings = list(
          NotebookOutputOption = "Allowed"|"Disabled",
          S3OutputPath = "string",
          S3KmsKeyId = "string"
        ),
        JupyterServerAppSettings = list(
          DefaultResourceSpec = list(
            SageMakerImageArn = "string",
            SageMakerImageVersionArn = "string",
            InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.geospatial.interactive"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
            LifecycleConfigArn = "string"
          ),
          LifecycleConfigArns = list(
            "string"
          ),
          CodeRepositories = list(
            list(
              RepositoryUrl = "string"
            )
          )
        ),
        KernelGatewayAppSettings = list(
          DefaultResourceSpec = list(
            SageMakerImageArn = "string",
            SageMakerImageVersionArn = "string",
            InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.geospatial.interactive"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
            LifecycleConfigArn = "string"
          ),
          CustomImages = list(
            list(
              ImageName = "string",
              ImageVersionNumber = 123,
              AppImageConfigName = "string"
            )
          ),
          LifecycleConfigArns = list(
            "string"
          )
        ),
        TensorBoardAppSettings = list(
          DefaultResourceSpec = list(
            SageMakerImageArn = "string",
            SageMakerImageVersionArn = "string",
            InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.geospatial.interactive"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
            LifecycleConfigArn = "string"
          )
        ),
        RStudioServerProAppSettings = list(
          AccessStatus = "ENABLED"|"DISABLED",
          UserGroup = "R_STUDIO_ADMIN"|"R_STUDIO_USER"
        ),
        RSessionAppSettings = list(
          DefaultResourceSpec = list(
            SageMakerImageArn = "string",
            SageMakerImageVersionArn = "string",
            InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.geospatial.interactive"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
            LifecycleConfigArn = "string"
          ),
          CustomImages = list(
            list(
              ImageName = "string",
              ImageVersionNumber = 123,
              AppImageConfigName = "string"
            )
          )
        ),
        CanvasAppSettings = list(
          TimeSeriesForecastingSettings = list(
            Status = "ENABLED"|"DISABLED",
            AmazonForecastRoleArn = "string"
          ),
          ModelRegisterSettings = list(
            Status = "ENABLED"|"DISABLED",
            CrossAccountModelRegisterRoleArn = "string"
          )
        )
      ),
      SubnetIds = list(
        "string"
      ),
      VpcId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AppNetworkAccessType = "PublicInternetOnly"|"VpcOnly",
      HomeEfsFileSystemKmsKeyId = "string",
      KmsKeyId = "string",
      AppSecurityGroupManagement = "Service"|"Customer",
      DomainSettings = list(
        SecurityGroupIds = list(
          "string"
        ),
        RStudioServerProDomainSettings = list(
          DomainExecutionRoleArn = "string",
          RStudioConnectUrl = "string",
          RStudioPackageManagerUrl = "string",
          DefaultResourceSpec = list(
            SageMakerImageArn = "string",
            SageMakerImageVersionArn = "string",
            InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.geospatial.interactive"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
            LifecycleConfigArn = "string"
          )
        ),
        ExecutionRoleIdentityConfig = "USER_PROFILE_NAME"|"DISABLED"
      ),
      DefaultSpaceSettings = list(
        ExecutionRole = "string",
        SecurityGroups = list(
          "string"
        ),
        JupyterServerAppSettings = list(
          DefaultResourceSpec = list(
            SageMakerImageArn = "string",
            SageMakerImageVersionArn = "string",
            InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.geospatial.interactive"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
            LifecycleConfigArn = "string"
          ),
          LifecycleConfigArns = list(
            "string"
          ),
          CodeRepositories = list(
            list(
              RepositoryUrl = "string"
            )
          )
        ),
        KernelGatewayAppSettings = list(
          DefaultResourceSpec = list(
            SageMakerImageArn = "string",
            SageMakerImageVersionArn = "string",
            InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.geospatial.interactive"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
            LifecycleConfigArn = "string"
          ),
          CustomImages = list(
            list(
              ImageName = "string",
              ImageVersionNumber = 123,
              AppImageConfigName = "string"
            )
          ),
          LifecycleConfigArns = list(
            "string"
          )
        )
      )
    )
