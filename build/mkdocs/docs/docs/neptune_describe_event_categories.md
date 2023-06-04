<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_describe_event_categories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays a list of categories for all event source types, or, if specified, for a specified source type

### Description

Displays a list of categories for all event source types, or, if
specified, for a specified source type.

### Usage

    neptune_describe_event_categories(SourceType, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_describe_event_categories_:_SourceType">SourceType</code></td>
<td><p>The type of source that is generating the events.</p>
<p>Valid values: db-instance | db-parameter-group | db-security-group |
db-snapshot</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_event_categories_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventCategoriesMapList = list(
        list(
          SourceType = "string",
          EventCategories = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_event_categories(
      SourceType = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
