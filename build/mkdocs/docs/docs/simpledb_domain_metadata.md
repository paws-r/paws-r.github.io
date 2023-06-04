<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_domain_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the domain, including when the domain was created, the number of items and attributes in the domain, and the size of the attribute names and values

### Description

Returns information about the domain, including when the domain was
created, the number of items and attributes in the domain, and the size
of the attribute names and values.

### Usage

    simpledb_domain_metadata(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_domain_metadata_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain for which to display the
metadata of.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ItemCount = 123,
      ItemNamesSizeBytes = 123,
      AttributeNameCount = 123,
      AttributeNamesSizeBytes = 123,
      AttributeValueCount = 123,
      AttributeValuesSizeBytes = 123,
      Timestamp = 123
    )

### Request syntax

    svc$domain_metadata(
      DomainName = "string"
    )
