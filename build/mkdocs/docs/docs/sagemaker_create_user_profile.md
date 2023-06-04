<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_user_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a user profile

### Description

Creates a user profile. A user profile represents a single user within a
domain, and is the main way to reference a "person" for the purposes of
sharing, reporting, and other user-oriented features. This entity is
created when a user onboards to Amazon SageMaker Studio. If an
administrator invites a person by email or imports them from IAM
Identity Center, a user profile is automatically created. A user profile
is the primary holder of settings for an individual user and has a
reference to the user's private Amazon Elastic File System (EFS) home
directory.

### Usage

    sagemaker_create_user_profile(DomainId, UserProfileName,
      SingleSignOnUserIdentifier, SingleSignOnUserValue, Tags, UserSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_user_profile_:_DomainId">DomainId</code></td>
<td><p>[required] The ID of the associated Domain.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_user_profile_:_UserProfileName">UserProfileName</code></td>
<td><p>[required] A name for the UserProfile. This value is not case
sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_user_profile_:_SingleSignOnUserIdentifier">SingleSignOnUserIdentifier</code></td>
<td><p>A specifier for the type of value specified in
SingleSignOnUserValue. Currently, the only supported value is
"UserName". If the Domain's AuthMode is IAM Identity Center, this field
is required. If the Domain's AuthMode is not IAM Identity Center, this
field cannot be specified.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_user_profile_:_SingleSignOnUserValue">SingleSignOnUserValue</code></td>
<td><p>The username of the associated Amazon Web Services Single Sign-On
User for this UserProfile. If the Domain's AuthMode is IAM Identity
Center, this field is required, and must match a valid username of a
user in your directory. If the Domain's AuthMode is not IAM Identity
Center, this field cannot be specified.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_user_profile_:_Tags">Tags</code></td>
<td><p>Each tag consists of a key and an optional value. Tag keys must
be unique per resource.</p>
<p>Tags that you specify for the User Profile are also added to all Apps
that the User Profile launches.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_user_profile_:_UserSettings">UserSettings</code></td>
<td><p>A collection of settings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserProfileArn = "string"
    )

### Request syntax

    svc$create_user_profile(
      DomainId = "string",
      UserProfileName = "string",
      SingleSignOnUserIdentifier = "string",
      SingleSignOnUserValue = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      UserSettings = list(
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
      )
    )
