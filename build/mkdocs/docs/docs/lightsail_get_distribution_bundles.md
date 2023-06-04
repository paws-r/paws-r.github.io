<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_distribution_bundles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the bundles that can be applied to your Amazon Lightsail content delivery network (CDN) distributions

### Description

Returns the bundles that can be applied to your Amazon Lightsail content
delivery network (CDN) distributions.

A distribution bundle specifies the monthly network transfer quota and
monthly cost of your distribution.

### Usage

    lightsail_get_distribution_bundles()

### Value

A list with the following syntax:

    list(
      bundles = list(
        list(
          bundleId = "string",
          name = "string",
          price = 123.0,
          transferPerMonthInGb = 123,
          isActive = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$get_distribution_bundles()
