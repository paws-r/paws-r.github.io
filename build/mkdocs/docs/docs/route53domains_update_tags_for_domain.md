<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_update_tags_for_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation adds or updates tags for a specified domain

### Description

This operation adds or updates tags for a specified domain.

All tag operations are eventually consistent; subsequent operations
might not immediately represent all issued operations.

### Usage

    route53domains_update_tags_for_domain(DomainName, TagsToUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_update_tags_for_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The domain for which you want to add or update
tags.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_update_tags_for_domain_:_TagsToUpdate">TagsToUpdate</code></td>
<td><p>A list of the tag keys and values that you want to add or update.
If you specify a key that already exists, the corresponding value will
be replaced.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_tags_for_domain(
      DomainName = "string",
      TagsToUpdate = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
