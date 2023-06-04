<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_create_protection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables Shield Advanced for a specific Amazon Web Services resource

### Description

Enables Shield Advanced for a specific Amazon Web Services resource. The
resource can be an Amazon CloudFront distribution, Amazon Route 53
hosted zone, Global Accelerator standard accelerator, Elastic IP
Address, Application Load Balancer, or a Classic Load Balancer. You can
protect Amazon EC2 instances and Network Load Balancers by association
with protected Amazon EC2 Elastic IP addresses.

You can add protection to only a single resource with each
`create_protection` request. You can add protection to multiple
resources at once through the Shield Advanced console at
[https://console.aws.amazon.com/wafv2/shieldv2#/](https://us-east-1.console.aws.amazon.com/wafv2/shieldv2#/).
For more information see [Getting Started with Shield
Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html)
and [Adding Shield Advanced protection to Amazon Web Services
resources](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    shield_create_protection(Name, ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="shield_create_protection_:_Name">Name</code></td>
<td><p>[required] Friendly name for the <code>Protection</code> you are
creating.</p></td>
</tr>
<tr class="even">
<td><code
id="shield_create_protection_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN (Amazon Resource Name) of the resource to be
protected.</p>
<p>The ARN should be in one of the following formats:</p>
<ul>
<li><p>For an Application Load Balancer:
<code>arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id </code></p></li>
<li><p>For an Elastic Load Balancer (Classic Load Balancer):
<code>arn:aws:elasticloadbalancing:region:account-id:loadbalancer/load-balancer-name </code></p></li>
<li><p>For an Amazon CloudFront distribution:
<code>arn:aws:cloudfront::account-id:distribution/distribution-id </code></p></li>
<li><p>For an Global Accelerator standard accelerator:
<code>arn:aws:globalaccelerator::account-id:accelerator/accelerator-id </code></p></li>
<li><p>For Amazon Route 53:
<code>arn:aws:route53:::hostedzone/hosted-zone-id </code></p></li>
<li><p>For an Elastic IP address:
<code>arn:aws:ec2:region:account-id:eip-allocation/allocation-id </code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="shield_create_protection_:_Tags">Tags</code></td>
<td><p>One or more tag key-value pairs for the Protection object that is
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProtectionId = "string"
    )

### Request syntax

    svc$create_protection(
      Name = "string",
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
