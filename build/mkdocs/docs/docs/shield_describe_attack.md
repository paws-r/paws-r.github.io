<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_describe_attack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the details of a DDoS attack

### Description

Describes the details of a DDoS attack.

### Usage

    shield_describe_attack(AttackId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="shield_describe_attack_:_AttackId">AttackId</code></td>
<td><p>[required] The unique identifier (ID) for the attack.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attack = list(
        AttackId = "string",
        ResourceArn = "string",
        SubResources = list(
          list(
            Type = "IP"|"URL",
            Id = "string",
            AttackVectors = list(
              list(
                VectorType = "string",
                VectorCounters = list(
                  list(
                    Name = "string",
                    Max = 123.0,
                    Average = 123.0,
                    Sum = 123.0,
                    N = 123,
                    Unit = "string"
                  )
                )
              )
            ),
            Counters = list(
              list(
                Name = "string",
                Max = 123.0,
                Average = 123.0,
                Sum = 123.0,
                N = 123,
                Unit = "string"
              )
            )
          )
        ),
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        AttackCounters = list(
          list(
            Name = "string",
            Max = 123.0,
            Average = 123.0,
            Sum = 123.0,
            N = 123,
            Unit = "string"
          )
        ),
        AttackProperties = list(
          list(
            AttackLayer = "NETWORK"|"APPLICATION",
            AttackPropertyIdentifier = "DESTINATION_URL"|"REFERRER"|"SOURCE_ASN"|"SOURCE_COUNTRY"|"SOURCE_IP_ADDRESS"|"SOURCE_USER_AGENT"|"WORDPRESS_PINGBACK_REFLECTOR"|"WORDPRESS_PINGBACK_SOURCE",
            TopContributors = list(
              list(
                Name = "string",
                Value = 123
              )
            ),
            Unit = "BITS"|"BYTES"|"PACKETS"|"REQUESTS",
            Total = 123
          )
        ),
        Mitigations = list(
          list(
            MitigationName = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_attack(
      AttackId = "string"
    )
