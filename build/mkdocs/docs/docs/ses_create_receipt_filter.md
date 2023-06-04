<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_create_receipt_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new IP address filter

### Description

Creates a new IP address filter.

For information about setting up IP address filters, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html).

You can execute this operation no more than once per second.

### Usage

    ses_create_receipt_filter(Filter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_create_receipt_filter_:_Filter">Filter</code></td>
<td><p>[required] A data structure that describes the IP address filter
to create, which consists of a name, an IP address range, and whether to
allow or block mail from it.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_receipt_filter(
      Filter = list(
        Name = "string",
        IpFilter = list(
          Policy = "Block"|"Allow",
          Cidr = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example creates a new IP address filter:
    svc$create_receipt_filter(
      Filter = list(
        IpFilter = list(
          Cidr = "1.2.3.4/24",
          Policy = "Allow"
        ),
        Name = "MyFilter"
      )
    )

    ## End(Not run)
