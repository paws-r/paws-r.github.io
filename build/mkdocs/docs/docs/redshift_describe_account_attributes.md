<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_account_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of attributes attached to an account

### Description

Returns a list of attributes attached to an account

### Usage

    redshift_describe_account_attributes(AttributeNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_account_attributes_:_AttributeNames">AttributeNames</code></td>
<td><p>A list of attribute names.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountAttributes = list(
        list(
          AttributeName = "string",
          AttributeValues = list(
            list(
              AttributeValue = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_account_attributes(
      AttributeNames = list(
        "string"
      )
    )
