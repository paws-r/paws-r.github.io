<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_put_registry_scanning_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the scanning configuration for your private registry

### Description

Creates or updates the scanning configuration for your private registry.

### Usage

    ecr_put_registry_scanning_configuration(scanType, rules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_put_registry_scanning_configuration_:_scanType">scanType</code></td>
<td><p>The scanning type to set for the registry.</p>
<p>When a registry scanning configuration is not defined, by default the
<code>BASIC</code> scan type is used. When basic scanning is used, you
may specify filters to determine which individual repositories, or all
repositories, are scanned when new images are pushed to those
repositories. Alternatively, you can do manual scans of images with
basic scanning.</p>
<p>When the <code>ENHANCED</code> scan type is set, Amazon Inspector
provides automated vulnerability scanning. You may choose between
continuous scanning or scan on push and you may specify filters to
determine which individual repositories, or all repositories, are
scanned.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_put_registry_scanning_configuration_:_rules">rules</code></td>
<td><p>The scanning rules to use for the registry. A scanning rule is
used to determine which repository filters are used and at what
frequency scanning will occur.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryScanningConfiguration = list(
        scanType = "BASIC"|"ENHANCED",
        rules = list(
          list(
            scanFrequency = "SCAN_ON_PUSH"|"CONTINUOUS_SCAN"|"MANUAL",
            repositoryFilters = list(
              list(
                filter = "string",
                filterType = "WILDCARD"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$put_registry_scanning_configuration(
      scanType = "BASIC"|"ENHANCED",
      rules = list(
        list(
          scanFrequency = "SCAN_ON_PUSH"|"CONTINUOUS_SCAN"|"MANUAL",
          repositoryFilters = list(
            list(
              filter = "string",
              filterType = "WILDCARD"
            )
          )
        )
      )
    )
