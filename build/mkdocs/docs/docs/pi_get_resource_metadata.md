<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pi_get_resource_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve the metadata for different features

### Description

Retrieve the metadata for different features. For example, the metadata
might indicate that a feature is turned on or off on a specific DB
instance.

### Usage

    pi_get_resource_metadata(ServiceType, Identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pi_get_resource_metadata_:_ServiceType">ServiceType</code></td>
<td><p>[required] The Amazon Web Services service for which Performance
Insights returns metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="pi_get_resource_metadata_:_Identifier">Identifier</code></td>
<td><p>[required] An immutable identifier for a data source that is
unique for an Amazon Web Services Region. Performance Insights gathers
metrics from this data source. To use a DB instance as a data source,
specify its <code>DbiResourceId</code> value. For example, specify
<code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Identifier = "string",
      Features = list(
        list(
          Status = "ENABLED"|"DISABLED"|"UNSUPPORTED"|"ENABLED_PENDING_REBOOT"|"DISABLED_PENDING_REBOOT"|"UNKNOWN"
        )
      )
    )

### Request syntax

    svc$get_resource_metadata(
      ServiceType = "RDS"|"DOCDB",
      Identifier = "string"
    )
