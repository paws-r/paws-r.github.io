<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_event_categories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays a list of categories for all event source types, or, if specified, for a specified source type

### Description

Displays a list of categories for all event source types, or, if
specified, for a specified source type. You can also see this list in
the "Amazon RDS event categories and event messages" section of the
[*Amazon RDS User
Guide*](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.Messages.html)
or the [*Amazon Aurora User
Guide*](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Events.Messages.html)
.

### Usage

    rds_describe_event_categories(SourceType, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_event_categories_:_SourceType">SourceType</code></td>
<td><p>The type of source that is generating the events. For RDS Proxy
events, specify <code>db-proxy</code>.</p>
<p>Valid values: <code>db-instance</code> | <code>db-cluster</code> |
<code>db-parameter-group</code> | <code>db-security-group</code> |
<code>db-snapshot</code> | <code>db-cluster-snapshot</code> |
<code>db-proxy</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_event_categories_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
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
