<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_checker_ip_ranges</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Route 53 does not perform authorization for this API because it retrieves information that is already available to the public

### Description

Route 53 does not perform authorization for this API because it
retrieves information that is already available to the public.

`get_checker_ip_ranges` still works, but we recommend that you download
ip-ranges.json, which includes IP address ranges for all Amazon Web
Services services. For more information, see [IP Address Ranges of
Amazon Route 53
Servers](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html)
in the *Amazon Route 53 Developer Guide*.

### Usage

    route53_get_checker_ip_ranges()

### Value

A list with the following syntax:

    list(
      CheckerIpRanges = list(
        "string"
      )
    )

### Request syntax

    svc$get_checker_ip_ranges()
