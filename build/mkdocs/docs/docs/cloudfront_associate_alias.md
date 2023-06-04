<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_associate_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an alias (also known as a CNAME or an alternate domain name) with a CloudFront distribution

### Description

Associates an alias (also known as a CNAME or an alternate domain name)
with a CloudFront distribution.

With this operation you can move an alias that's already in use on a
CloudFront distribution to a different distribution in one step. This
prevents the downtime that could occur if you first remove the alias
from one distribution and then separately add the alias to another
distribution.

To use this operation to associate an alias with a distribution, you
provide the alias and the ID of the target distribution for the alias.
For more information, including how to set up the target distribution,
prerequisites that you must complete, and other restrictions, see
[Moving an alternate domain name to a different
distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_associate_alias(TargetDistributionId, Alias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_associate_alias_:_TargetDistributionId">TargetDistributionId</code></td>
<td><p>[required] The ID of the distribution that you're associating the
alias with.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_associate_alias_:_Alias">Alias</code></td>
<td><p>[required] The alias (also known as a CNAME) to add to the target
distribution.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_alias(
      TargetDistributionId = "string",
      Alias = "string"
    )
