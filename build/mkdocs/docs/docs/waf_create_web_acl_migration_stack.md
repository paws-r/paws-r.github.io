<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_create_web_acl_migration_stack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an AWS CloudFormation WAFV2 template for the specified web ACL in the specified Amazon S3 bucket

### Description

Creates an AWS CloudFormation WAFV2 template for the specified web ACL
in the specified Amazon S3 bucket. Then, in CloudFormation, you create a
stack from the template, to create the web ACL and its resources in AWS
WAFV2. Use this to migrate your AWS WAF Classic web ACL to the latest
version of AWS WAF.

This is part of a larger migration procedure for web ACLs from AWS WAF
Classic to the latest version of AWS WAF. For the full procedure,
including caveats and manual steps to complete the migration and switch
over to the new web ACL, see [Migrating your AWS WAF Classic resources
to AWS
WAF](https://docs.aws.amazon.com/waf/latest/developerguide/waf-migrating-from-classic.html)
in the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

### Usage

    waf_create_web_acl_migration_stack(WebACLId, S3BucketName,
      IgnoreUnsupportedType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_create_web_acl_migration_stack_:_WebACLId">WebACLId</code></td>
<td><p>[required] The UUID of the WAF Classic web ACL that you want to
migrate to WAF v2.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_create_web_acl_migration_stack_:_S3BucketName">S3BucketName</code></td>
<td><p>[required] The name of the Amazon S3 bucket to store the
CloudFormation template in. The S3 bucket must be configured as follows
for the migration:</p>
<ul>
<li><p>The bucket name must start with <code
style="white-space: pre;">⁠aws-waf-migration-⁠</code>. For example,
<code>aws-waf-migration-my-web-acl</code>.</p></li>
<li><p>The bucket must be in the Region where you are deploying the
template. For example, for a web ACL in us-west-2, you must use an
Amazon S3 bucket in us-west-2 and you must deploy the template stack to
us-west-2.</p></li>
<li><p>The bucket policies must permit the migration process to write
data. For listings of the bucket policies, see the Examples
section.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="waf_create_web_acl_migration_stack_:_IgnoreUnsupportedType">IgnoreUnsupportedType</code></td>
<td><p>[required] Indicates whether to exclude entities that can't be
migrated or to stop the migration. Set this to true to ignore
unsupported entities in the web ACL during the migration. Otherwise, if
AWS WAF encounters unsupported entities, it stops the process and throws
an exception.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      S3ObjectUrl = "string"
    )

### Request syntax

    svc$create_web_acl_migration_stack(
      WebACLId = "string",
      S3BucketName = "string",
      IgnoreUnsupportedType = TRUE|FALSE
    )
