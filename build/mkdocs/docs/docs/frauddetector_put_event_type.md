<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_put_event_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an event type

### Description

Creates or updates an event type. An event is a business activity that
is evaluated for fraud risk. With Amazon Fraud Detector, you generate
fraud predictions for events. An event type defines the structure for an
event sent to Amazon Fraud Detector. This includes the variables sent as
part of the event, the entity performing the event (such as a customer),
and the labels that classify the event. Example event types include
online payment transactions, account registrations, and authentications.

### Usage

    frauddetector_put_event_type(name, description, eventVariables, labels,
      entityTypes, eventIngestion, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_put_event_type_:_name">name</code></td>
<td><p>[required] The name.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_put_event_type_:_description">description</code></td>
<td><p>The description of the event type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_put_event_type_:_eventVariables">eventVariables</code></td>
<td><p>[required] The event type variables.</p></td>
</tr>
<tr class="even">
<td><code id="frauddetector_put_event_type_:_labels">labels</code></td>
<td><p>The event type labels.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_put_event_type_:_entityTypes">entityTypes</code></td>
<td><p>[required] The entity type for the event type. Example entity
types: customer, merchant, account.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_put_event_type_:_eventIngestion">eventIngestion</code></td>
<td><p>Specifies if ingenstion is enabled or disabled.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_put_event_type_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_event_type(
      name = "string",
      description = "string",
      eventVariables = list(
        "string"
      ),
      labels = list(
        "string"
      ),
      entityTypes = list(
        "string"
      ),
      eventIngestion = "ENABLED"|"DISABLED",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
