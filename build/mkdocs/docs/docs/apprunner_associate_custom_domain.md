<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_associate_custom_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate your own domain name with the App Runner subdomain URL of your App Runner service

### Description

Associate your own domain name with the App Runner subdomain URL of your
App Runner service.

After you call `associate_custom_domain` and receive a successful
response, use the information in the CustomDomain record that's returned
to add CNAME records to your Domain Name System (DNS). For each mapped
domain name, add a mapping to the target App Runner subdomain and one or
more certificate validation records. App Runner then performs DNS
validation to verify that you own or control the domain name that you
associated. App Runner tracks domain validity in a certificate stored in
[AWS Certificate Manager
(ACM)](https://docs.aws.amazon.com/acm/latest/userguide/).

### Usage

    apprunner_associate_custom_domain(ServiceArn, DomainName,
      EnableWWWSubdomain)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_associate_custom_domain_:_ServiceArn">ServiceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
service that you want to associate a custom domain name with.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_associate_custom_domain_:_DomainName">DomainName</code></td>
<td><p>[required] A custom domain endpoint to associate. Specify a root
domain (for example, <code>example.com</code>), a subdomain (for
example, <code>login.example.com</code> or
<code>admin.login.example.com</code>), or a wildcard (for example, <code
style="white-space: pre;">⁠*.example.com⁠</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_associate_custom_domain_:_EnableWWWSubdomain">EnableWWWSubdomain</code></td>
<td><p>Set to <code>true</code> to associate the subdomain
<code>www.DomainName </code> with the App Runner service in addition to
the base domain.</p>
<p>Default: <code>true</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DNSTarget = "string",
      ServiceArn = "string",
      CustomDomain = list(
        DomainName = "string",
        EnableWWWSubdomain = TRUE|FALSE,
        CertificateValidationRecords = list(
          list(
            Name = "string",
            Type = "string",
            Value = "string",
            Status = "PENDING_VALIDATION"|"SUCCESS"|"FAILED"
          )
        ),
        Status = "CREATING"|"CREATE_FAILED"|"ACTIVE"|"DELETING"|"DELETE_FAILED"|"PENDING_CERTIFICATE_DNS_VALIDATION"|"BINDING_CERTIFICATE"
      ),
      VpcDNSTargets = list(
        list(
          VpcIngressConnectionArn = "string",
          VpcId = "string",
          DomainName = "string"
        )
      )
    )

### Request syntax

    svc$associate_custom_domain(
      ServiceArn = "string",
      DomainName = "string",
      EnableWWWSubdomain = TRUE|FALSE
    )
