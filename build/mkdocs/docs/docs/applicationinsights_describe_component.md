<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_describe_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a component and lists the resources that are grouped together in a component

### Description

Describes a component and lists the resources that are grouped together
in a component.

### Usage

    applicationinsights_describe_component(ResourceGroupName, ComponentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_describe_component_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_describe_component_:_ComponentName">ComponentName</code></td>
<td><p>[required] The name of the component.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationComponent = list(
        ComponentName = "string",
        ComponentRemarks = "string",
        ResourceType = "string",
        OsType = "WINDOWS"|"LINUX",
        Tier = "CUSTOM"|"DEFAULT"|"DOT_NET_CORE"|"DOT_NET_WORKER"|"DOT_NET_WEB_TIER"|"DOT_NET_WEB"|"SQL_SERVER"|"SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP"|"MYSQL"|"POSTGRESQL"|"JAVA_JMX"|"ORACLE"|"SAP_HANA_MULTI_NODE"|"SAP_HANA_SINGLE_NODE"|"SAP_HANA_HIGH_AVAILABILITY"|"SQL_SERVER_FAILOVER_CLUSTER_INSTANCE"|"SHAREPOINT"|"ACTIVE_DIRECTORY",
        Monitor = TRUE|FALSE,
        DetectedWorkload = list(
          list(
            "string"
          )
        )
      ),
      ResourceList = list(
        "string"
      )
    )

### Request syntax

    svc$describe_component(
      ResourceGroupName = "string",
      ComponentName = "string"
    )
