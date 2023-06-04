<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_conflicting_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of aliases (also called CNAMEs or alternate domain names) that conflict or overlap with the provided alias, and the associated CloudFront distributions and Amazon Web Services accounts for each conflicting alias

### Description

Gets a list of aliases (also called CNAMEs or alternate domain names)
that conflict or overlap with the provided alias, and the associated
CloudFront distributions and Amazon Web Services accounts for each
conflicting alias. In the returned list, the distribution and account
IDs are partially hidden, which allows you to identify the distributions
and accounts that you own, but helps to protect the information of ones
that you don't own.

Use this operation to find aliases that are in use in CloudFront that
conflict or overlap with the provided alias. For example, if you provide
`www.example.com` as input, the returned list can include
`www.example.com` and the overlapping wildcard alternate domain name
(`⁠*.example.com⁠`), if they exist. If you provide `⁠*.example.com⁠` as
input, the returned list can include `⁠*.example.com⁠` and any alternate
domain names covered by that wildcard (for example, `www.example.com`,
`test.example.com`, `dev.example.com`, and so on), if they exist.

To list conflicting aliases, you provide the alias to search and the ID
of a distribution in your account that has an attached SSL/TLS
certificate that includes the provided alias. For more information,
including how to set up the distribution and certificate, see [Moving an
alternate domain name to a different
distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move)
in the *Amazon CloudFront Developer Guide*.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send a subsequent request that specifies the
`NextMarker` value from the current response as the `Marker` value in
the subsequent request.

### Usage

    cloudfront_list_conflicting_aliases(DistributionId, Alias, Marker,
      MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_conflicting_aliases_:_DistributionId">DistributionId</code></td>
<td><p>[required] The ID of a distribution in your account that has an
attached SSL/TLS certificate that includes the provided alias.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_conflicting_aliases_:_Alias">Alias</code></td>
<td><p>[required] The alias (also called a CNAME) to search for
conflicting aliases.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_list_conflicting_aliases_:_Marker">Marker</code></td>
<td><p>Use this field when paginating results to indicate where to begin
in the list of conflicting aliases. The response includes conflicting
aliases in the list that occur after the marker. To get the next page of
the list, set this field's value to the value of <code>NextMarker</code>
from the current page's response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_conflicting_aliases_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of conflicting aliases that you want in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConflictingAliasesList = list(
        NextMarker = "string",
        MaxItems = 123,
        Quantity = 123,
        Items = list(
          list(
            Alias = "string",
            DistributionId = "string",
            AccountId = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_conflicting_aliases(
      DistributionId = "string",
      Alias = "string",
      Marker = "string",
      MaxItems = 123
    )
