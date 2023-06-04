<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_delete_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified logging configuration

### Description

Deletes the specified logging configuration.

### Usage

    ivschat_delete_logging_configuration(identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivschat_delete_logging_configuration_:_identifier">identifier</code></td>
<td><p>[required] Identifier of the logging configuration to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_logging_configuration(
      identifier = "string"
    )
