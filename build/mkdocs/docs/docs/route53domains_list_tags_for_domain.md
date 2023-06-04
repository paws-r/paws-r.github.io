<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_list_tags_for_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns all of the tags that are associated with the specified domain

### Description

This operation returns all of the tags that are associated with the
specified domain.

All tag operations are eventually consistent; subsequent operations
might not immediately represent all issued operations.

### Usage

    route53domains_list_tags_for_domain(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_list_tags_for_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The domain for which you want to get a list of
tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_domain(
      DomainName = "string"
    )
