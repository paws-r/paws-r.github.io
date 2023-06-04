<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_get_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a TagKey configuration from an account

### Description

Retrieves a `TagKey` configuration from an account.

### Usage

    appregistry_get_configuration()

### Value

A list with the following syntax:

    list(
      configuration = list(
        tagQueryConfiguration = list(
          tagKey = "string"
        )
      )
    )
