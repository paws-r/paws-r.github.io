<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_delete_receipt_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified IP address filter

### Description

Deletes the specified IP address filter.

For information about managing IP address filters, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html).

You can execute this operation no more than once per second.

### Usage

    ses_delete_receipt_filter(FilterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_delete_receipt_filter_:_FilterName">FilterName</code></td>
<td><p>[required] The name of the IP address filter to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_receipt_filter(
      FilterName = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes an IP address filter:
    svc$delete_receipt_filter(
      FilterName = "MyFilter"
    )

    ## End(Not run)
