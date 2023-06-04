<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_workforce</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to create a workforce

### Description

Use this operation to create a workforce. This operation will return an
error if a workforce already exists in the Amazon Web Services Region
that you specify. You can only create one workforce in each Amazon Web
Services Region per Amazon Web Services account.

If you want to create a new workforce in an Amazon Web Services Region
where a workforce already exists, use the `delete_workforce` API
operation to delete the existing workforce and then use
`create_workforce` to create a new workforce.

To create a private workforce using Amazon Cognito, you must specify a
Cognito user pool in `CognitoConfig`. You can also create an Amazon
Cognito workforce using the Amazon SageMaker console. For more
information, see [Create a Private Workforce (Amazon
Cognito)](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html).

To create a private workforce using your own OIDC Identity Provider
(IdP), specify your IdP configuration in `OidcConfig`. Your OIDC IdP
must support *groups* because groups are used by Ground Truth and Amazon
A2I to create work teams. For more information, see [Create a Private
Workforce (OIDC
IdP)](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private-oidc.html).

### Usage

    sagemaker_create_workforce(CognitoConfig, OidcConfig, SourceIpConfig,
      WorkforceName, Tags, WorkforceVpcConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_workforce_:_CognitoConfig">CognitoConfig</code></td>
<td><p>Use this parameter to configure an Amazon Cognito private
workforce. A single Cognito workforce is created using and corresponds
to a single <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html">Amazon
Cognito user pool</a>.</p>
<p>Do not use <code>OidcConfig</code> if you specify values for
<code>CognitoConfig</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_workforce_:_OidcConfig">OidcConfig</code></td>
<td><p>Use this parameter to configure a private workforce using your
own OIDC Identity Provider.</p>
<p>Do not use <code>CognitoConfig</code> if you specify values for
<code>OidcConfig</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_workforce_:_SourceIpConfig">SourceIpConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_workforce_:_WorkforceName">WorkforceName</code></td>
<td><p>[required] The name of the private workforce.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_workforce_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs that contain metadata to help you
categorize and organize our workforce. Each tag consists of a key and a
value, both of which you define.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_workforce_:_WorkforceVpcConfig">WorkforceVpcConfig</code></td>
<td><p>Use this parameter to configure a workforce using VPC.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkforceArn = "string"
    )

### Request syntax

    svc$create_workforce(
      CognitoConfig = list(
        UserPool = "string",
        ClientId = "string"
      ),
      OidcConfig = list(
        ClientId = "string",
        ClientSecret = "string",
        Issuer = "string",
        AuthorizationEndpoint = "string",
        TokenEndpoint = "string",
        UserInfoEndpoint = "string",
        LogoutEndpoint = "string",
        JwksUri = "string"
      ),
      SourceIpConfig = list(
        Cidrs = list(
          "string"
        )
      ),
      WorkforceName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      WorkforceVpcConfig = list(
        VpcId = "string",
        SecurityGroupIds = list(
          "string"
        ),
        Subnets = list(
          "string"
        )
      )
    )
