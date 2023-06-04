<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_event_categories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays a list of event categories for all event source types, or for a specified source type

### Description

Displays a list of event categories for all event source types, or for a
specified source type. For a list of the event categories and source
types, go to [Amazon Redshift Event
Notifications](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html).

### Usage

    redshift_describe_event_categories(SourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_event_categories_:_SourceType">SourceType</code></td>
<td><p>The source type, such as cluster or parameter group, to which the
described event categories apply.</p>
<p>Valid values: cluster, cluster-snapshot, cluster-parameter-group,
cluster-security-group, and scheduled-action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventCategoriesMapList = list(
        list(
          SourceType = "string",
          Events = list(
            list(
              EventId = "string",
              EventCategories = list(
                "string"
              ),
              EventDescription = "string",
              Severity = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_event_categories(
      SourceType = "string"
    )
