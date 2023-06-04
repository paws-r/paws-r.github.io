<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_create_user_pool_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new domain for a user pool

### Description

Creates a new domain for a user pool.

### Usage

    cognitoidentityprovider_create_user_pool_domain(Domain, UserPoolId,
      CustomDomainConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_domain_:_Domain">Domain</code></td>
<td><p>[required] The domain string. For custom domains, this is the
fully-qualified domain name, such as <code>auth.example.com</code>. For
Amazon Cognito prefix domains, this is the prefix alone, such as
<code>auth</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_domain_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_domain_:_CustomDomainConfig">CustomDomainConfig</code></td>
<td><p>The configuration for a custom domain that hosts the sign-up and
sign-in webpages for your application.</p>
<p>Provide this parameter only if you want to use a custom domain for
your user pool. Otherwise, you can exclude this parameter and use the
Amazon Cognito hosted domain instead.</p>
<p>For more information about the hosted domain and custom domains, see
<a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html">Configuring
a User Pool Domain</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CloudFrontDomain = "string"
    )

### Request syntax

    svc$create_user_pool_domain(
      Domain = "string",
      UserPoolId = "string",
      CustomDomainConfig = list(
        CertificateArn = "string"
      )
    )
