<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_list_phone_numbers_opted_out</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them

### Description

Returns a list of phone numbers that are opted out, meaning you cannot
send SMS messages to them.

The results for `list_phone_numbers_opted_out` are paginated, and each
page returns up to 100 phone numbers. If additional phone numbers are
available after the first page of results, then a `NextToken` string
will be returned. To receive the next page, you call
`list_phone_numbers_opted_out` again using the `NextToken` string
received from the previous call. When there are no more records to
return, `NextToken` will be null.

### Usage

    sns_list_phone_numbers_opted_out(nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_list_phone_numbers_opted_out_:_nextToken">nextToken</code></td>
<td><p>A <code>NextToken</code> string is used when you call the
<code>list_phone_numbers_opted_out</code> action to retrieve additional
records that are available after the first page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      phoneNumbers = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_phone_numbers_opted_out(
      nextToken = "string"
    )
