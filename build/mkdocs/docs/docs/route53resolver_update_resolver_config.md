<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_update_resolver_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the behavior configuration of Route 53 Resolver behavior for a single VPC from Amazon Virtual Private Cloud

### Description

Updates the behavior configuration of Route 53 Resolver behavior for a
single VPC from Amazon Virtual Private Cloud.

### Usage

    route53resolver_update_resolver_config(ResourceId,
      AutodefinedReverseFlag)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_update_resolver_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] Resource ID of the Amazon VPC that you want to update
the Resolver configuration for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_resolver_config_:_AutodefinedReverseFlag">AutodefinedReverseFlag</code></td>
<td><p>[required] Indicates whether or not the Resolver will create
autodefined rules for reverse DNS lookups. This is enabled by default.
Disabling this option will also affect EC2-Classic instances using
ClassicLink. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a>
in the <em>Amazon EC2 guide</em>.</p>
<p>We are retiring EC2-Classic on August 15, 2022. We recommend that you
migrate from EC2-Classic to a VPC. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html">Migrate
from EC2-Classic to a VPC</a> in the <em>Amazon EC2 guide</em> and the
blog <a
href="https://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/">EC2-Classic
Networking is Retiring – Here’s How to Prepare</a>.</p>
<p>It can take some time for the status change to be completed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverConfig = list(
        Id = "string",
        ResourceId = "string",
        OwnerId = "string",
        AutodefinedReverse = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"|"USE_LOCAL_RESOURCE_SETTING"
      )
    )

### Request syntax

    svc$update_resolver_config(
      ResourceId = "string",
      AutodefinedReverseFlag = "ENABLE"|"DISABLE"|"USE_LOCAL_RESOURCE_SETTING"
    )
