<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_describe_user_pool_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a domain

### Description

Gets information about a domain.

### Usage

    cognitoidentityprovider_describe_user_pool_domain(Domain)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_describe_user_pool_domain_:_Domain">Domain</code></td>
<td><p>[required] The domain string. For custom domains, this is the
fully-qualified domain name, such as <code>auth.example.com</code>. For
Amazon Cognito prefix domains, this is the prefix alone, such as
<code>auth</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainDescription = list(
        UserPoolId = "string",
        AWSAccountId = "string",
        Domain = "string",
        S3Bucket = "string",
        CloudFrontDistribution = "string",
        Version = "string",
        Status = "CREATING"|"DELETING"|"UPDATING"|"ACTIVE"|"FAILED",
        CustomDomainConfig = list(
          CertificateArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_user_pool_domain(
      Domain = "string"
    )
