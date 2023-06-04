<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_put_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a TagKey configuration to an account

### Description

Associates a `TagKey` configuration to an account.

### Usage

    appregistry_put_configuration(configuration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_put_configuration_:_configuration">configuration</code></td>
<td><p>[required] Associates a <code>TagKey</code> configuration to an
account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_configuration(
      configuration = list(
        tagQueryConfiguration = list(
          tagKey = "string"
        )
      )
    )
