<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_list_receipt_filters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the IP address filters associated with your AWS account in the current AWS Region

### Description

Lists the IP address filters associated with your AWS account in the
current AWS Region.

For information about managing IP address filters, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html).

You can execute this operation no more than once per second.

### Usage

    ses_list_receipt_filters()

### Value

A list with the following syntax:

    list(
      Filters = list(
        list(
          Name = "string",
          IpFilter = list(
            Policy = "Block"|"Allow",
            Cidr = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_receipt_filters()

### Examples

    ## Not run: 
    # The following example lists the IP address filters that are associated
    # with an AWS account:
    svc$list_receipt_filters()

    ## End(Not run)
