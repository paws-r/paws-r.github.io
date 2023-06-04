<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_delete_tags_for_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation deletes the specified tags for a domain

### Description

This operation deletes the specified tags for a domain.

All tag operations are eventually consistent; subsequent operations
might not immediately represent all issued operations.

### Usage

    route53domains_delete_tags_for_domain(DomainName, TagsToDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_delete_tags_for_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The domain for which you want to delete one or more
tags.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_delete_tags_for_domain_:_TagsToDelete">TagsToDelete</code></td>
<td><p>[required] A list of tag keys to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_tags_for_domain(
      DomainName = "string",
      TagsToDelete = list(
        "string"
      )
    )
