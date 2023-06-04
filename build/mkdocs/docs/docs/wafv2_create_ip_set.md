<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_create_ip_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an IPSet, which you use to identify web requests that originate from specific IP addresses or ranges of IP addresses

### Description

Creates an IPSet, which you use to identify web requests that originate
from specific IP addresses or ranges of IP addresses. For example, if
you're receiving a lot of requests from a ranges of IP addresses, you
can configure WAF to block them using an IPSet that lists those IP
addresses.

### Usage

    wafv2_create_ip_set(Name, Scope, Description, IPAddressVersion,
      Addresses, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_create_ip_set_:_Name">Name</code></td>
<td><p>[required] The name of the IP set. You cannot change the name of
an <code>IPSet</code> after you create it.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_create_ip_set_:_Scope">Scope</code></td>
<td><p>[required] Specifies whether this is for an Amazon CloudFront
distribution or for a regional application. A regional application can
be an Application Load Balancer (ALB), an Amazon API Gateway REST API,
an AppSync GraphQL API, an Amazon Cognito user pool, an App Runner
service, or an Amazon Web Services Verified Access instance.</p>
<p>To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:</p>
<ul>
<li><p>CLI - Specify the Region when you use the CloudFront scope:
<code>--scope=CLOUDFRONT --region=us-east-1</code>.</p></li>
<li><p>API and SDKs - For all calls, use the Region endpoint
us-east-1.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="wafv2_create_ip_set_:_Description">Description</code></td>
<td><p>A description of the IP set that helps with
identification.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_create_ip_set_:_IPAddressVersion">IPAddressVersion</code></td>
<td><p>[required] The version of the IP addresses, either
<code>IPV4</code> or <code>IPV6</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="wafv2_create_ip_set_:_Addresses">Addresses</code></td>
<td><p>[required] Contains an array of strings that specifies zero or
more IP addresses or blocks of IP addresses. All addresses must be
specified using Classless Inter-Domain Routing (CIDR) notation. WAF
supports all IPv4 and IPv6 CIDR ranges except for <code
style="white-space: pre;">⁠/0⁠</code>.</p>
<p>Example address strings:</p>
<ul>
<li><p>To configure WAF to allow, block, or count requests that
originated from the IP address 192.0.2.44, specify <code
style="white-space: pre;">⁠192.0.2.44/32⁠</code>.</p></li>
<li><p>To configure WAF to allow, block, or count requests that
originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
<code style="white-space: pre;">⁠192.0.2.0/24⁠</code>.</p></li>
<li><p>To configure WAF to allow, block, or count requests that
originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111,
specify
<code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p></li>
<li><p>To configure WAF to allow, block, or count requests that
originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to
1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
<code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p></li>
</ul>
<p>For more information about CIDR notation, see the Wikipedia entry <a
href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
Inter-Domain Routing</a>.</p>
<p>Example JSON <code>Addresses</code> specifications:</p>
<ul>
<li><p>Empty array: <code
style="white-space: pre;">⁠"Addresses": []⁠</code></p></li>
<li><p>Array with one address: <code
style="white-space: pre;">⁠"Addresses": ["192.0.2.44/32"]⁠</code></p></li>
<li><p>Array with three addresses: <code
style="white-space: pre;">⁠"Addresses": ["192.0.2.44/32", "192.0.2.0/24", "192.0.0.0/16"]⁠</code></p></li>
<li><p>INVALID specification: <code
style="white-space: pre;">⁠"Addresses": [""]⁠</code> INVALID</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="wafv2_create_ip_set_:_Tags">Tags</code></td>
<td><p>An array of key:value pairs to associate with the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Summary = list(
        Name = "string",
        Id = "string",
        Description = "string",
        LockToken = "string",
        ARN = "string"
      )
    )

### Request syntax

    svc$create_ip_set(
      Name = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      Description = "string",
      IPAddressVersion = "IPV4"|"IPV6",
      Addresses = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
