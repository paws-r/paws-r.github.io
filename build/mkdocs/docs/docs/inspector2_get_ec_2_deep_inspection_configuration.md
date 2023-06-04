<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_get_ec_2_deep_inspection_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the activation status of Amazon Inspector deep inspection and custom paths associated with your account

### Description

Retrieves the activation status of Amazon Inspector deep inspection and
custom paths associated with your account.

### Usage

    inspector2_get_ec_2_deep_inspection_configuration()

### Value

A list with the following syntax:

    list(
      errorMessage = "string",
      orgPackagePaths = list(
        "string"
      ),
      packagePaths = list(
        "string"
      ),
      status = "ACTIVATED"|"DEACTIVATED"|"PENDING"|"FAILED"
    )

### Request syntax

    svc$get_ec_2_deep_inspection_configuration()
