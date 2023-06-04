<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_delete_terminology</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A synchronous action that deletes a custom terminology

### Description

A synchronous action that deletes a custom terminology.

### Usage

    translate_delete_terminology(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="translate_delete_terminology_:_Name">Name</code></td>
<td><p>[required] The name of the custom terminology being
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_terminology(
      Name = "string"
    )
