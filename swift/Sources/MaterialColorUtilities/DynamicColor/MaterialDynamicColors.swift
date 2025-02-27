// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

private func _isFidelity(_ scheme: DynamicScheme) -> Bool {
  return scheme.variant == Variant.fidelity || scheme.variant == Variant.content
}

private func _isMonochrome(_ scheme: DynamicScheme) -> Bool {
  return scheme.variant == Variant.monochrome
}

/// Tokens, or named colors, in the Material Design system.
class MaterialDynamicColors {
  static let contentAccentToneDelta: Double = 15

  static func highestSurface(_ scheme: DynamicScheme) -> DynamicColor {
    return scheme.isDark ? surfaceBright : surfaceDim
  }

  static func viewingConditionsForAlbers(_ scheme: DynamicScheme) -> ViewingConditions {
    return ViewingConditions.make(backgroundLstar: scheme.isDark ? 30 : 80)
  }

  static let primaryPaletteKeyColor: DynamicColor = DynamicColor(
    name: "primary_palette_key_color",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      return scheme.primaryPalette.keyColor.tone
    }
  )

  static let secondaryPaletteKeyColor: DynamicColor = DynamicColor(
    name: "secondary_palette_key_color",
    palette: { scheme in
      return scheme.secondaryPalette
    },
    tone: { scheme in
      return scheme.secondaryPalette.keyColor.tone
    }
  )

  static let tertiaryPaletteKeyColor: DynamicColor = DynamicColor(
    name: "tertiary_palette_key_color",
    palette: { scheme in
      return scheme.tertiaryPalette
    },
    tone: { scheme in
      return scheme.tertiaryPalette.keyColor.tone
    }
  )

  static let neutralPaletteKeyColor: DynamicColor = DynamicColor(
    name: "neutral_palette_key_color",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.neutralPalette.keyColor.tone
    }
  )

  static let neutralVariantPaletteKeyColor: DynamicColor = DynamicColor(
    name: "neutral_variant_palette_key_color",
    palette: { scheme in
      return scheme.neutralVariantPalette
    },
    tone: { scheme in
      return scheme.neutralVariantPalette.keyColor.tone
    }
  )

  static let background: DynamicColor = DynamicColor(
    name: "background",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 6 : 98
    },
    isBackground: true
  )

  static let onBackground: DynamicColor = DynamicColor(
    name: "on_background",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 90 : 10
    },
    background: { scheme in
      return MaterialDynamicColors.background
    },
    contrastCurve: ContrastCurve(3, 3, 4.5, 7)
  )

  static let surface: DynamicColor = DynamicColor(
    name: "surface",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 6 : 98
    },
    isBackground: true
  )

  static let surfaceDim: DynamicColor = DynamicColor(
    name: "surface_dim",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 6 : 87
    },
    isBackground: true
  )

  static let surfaceBright: DynamicColor = DynamicColor(
    name: "surface_bright",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 24 : 98
    },
    isBackground: true
  )

  static let surfaceContainerLowest: DynamicColor = DynamicColor(
    name: "surface_container_lowest",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 4 : 100
    },
    isBackground: true
  )

  static let surfaceContainerLow: DynamicColor = DynamicColor(
    name: "surface_container_low",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 10 : 96
    },
    isBackground: true
  )

  static let surfaceContainer: DynamicColor = DynamicColor(
    name: "surface_container",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 12 : 94
    },
    isBackground: true
  )

  static let surfaceContainerHigh: DynamicColor = DynamicColor(
    name: "surface_container_high",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 17 : 92
    },
    isBackground: true
  )

  static let surfaceContainerHighest: DynamicColor = DynamicColor(
    name: "surface_container_highest",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 22 : 90
    },
    isBackground: true
  )

  static let onSurface: DynamicColor = DynamicColor(
    name: "on_surface",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 90 : 10
    },
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let surfaceVariant: DynamicColor = DynamicColor(
    name: "surface_variant",
    palette: { scheme in
      return scheme.neutralVariantPalette
    },
    tone: { scheme in
      return scheme.isDark ? 30 : 90
    },
    isBackground: true
  )

  static let onSurfaceVariant: DynamicColor = DynamicColor(
    name: "on_surface_variant",
    palette: { scheme in
      return scheme.neutralVariantPalette
    },
    tone: { scheme in
      return scheme.isDark ? 80 : 30
    },
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(3, 4.5, 7, 11)
  )

  static let inverseSurface: DynamicColor = DynamicColor(
    name: "inverse_surface",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 90 : 20
    }
  )

  static let inverseOnSurface: DynamicColor = DynamicColor(
    name: "inverse_on_surface",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return scheme.isDark ? 20 : 95
    },
    background: { scheme in
      return MaterialDynamicColors.inverseSurface
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let outline: DynamicColor = DynamicColor(
    name: "outline",
    palette: { scheme in
      return scheme.neutralVariantPalette
    },
    tone: { scheme in
      return scheme.isDark ? 60 : 50
    },
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1.5, 3, 4.5, 7)
  )

  static let outlineVariant: DynamicColor = DynamicColor(
    name: "outline_variant",
    palette: { scheme in
      return scheme.neutralVariantPalette
    },
    tone: { scheme in
      return scheme.isDark ? 30 : 80
    },
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7)
  )

  static let shadow: DynamicColor = DynamicColor(
    name: "shadow",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return 0
    }
  )

  static let scrim: DynamicColor = DynamicColor(
    name: "scrim",
    palette: { scheme in
      return scheme.neutralPalette
    },
    tone: { scheme in
      return 0
    }
  )

  static let surfaceTint: DynamicColor = DynamicColor(
    name: "surface_tint",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      return scheme.isDark ? 80 : 40
    },
    isBackground: true
  )

  static let primary: DynamicColor = DynamicColor(
    name: "primary",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      if _isMonochrome(scheme) {
        return scheme.isDark ? 100 : 0
      }
      return scheme.isDark ? 80 : 40
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(3, 4.5, 7, 11),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.primaryContainer, MaterialDynamicColors.primary,
        15, polarity: TonePolarity.nearer, stayTogether: false)
    }
  )

  static let onPrimary: DynamicColor = DynamicColor(
    name: "on_primary",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      if _isMonochrome(scheme) {
        return scheme.isDark ? 10 : 90
      }
      return scheme.isDark ? 20 : 100
    },
    background: { scheme in
      return MaterialDynamicColors.primary
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let primaryContainer: DynamicColor = DynamicColor(
    name: "primary_container",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      if _isFidelity(scheme) {
        return _performAlbers(scheme.sourceColorHct, scheme)
      }
      if _isMonochrome(scheme) {
        return scheme.isDark ? 85 : 25
      }
      return scheme.isDark ? 30 : 90
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.primaryContainer, MaterialDynamicColors.primary,
        15, polarity: TonePolarity.nearer, stayTogether: false)
    }
  )

  static let onPrimaryContainer: DynamicColor = DynamicColor(
    name: "on_primary_container",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      if _isFidelity(scheme) {
        return DynamicColor.foregroundTone(
          MaterialDynamicColors.primaryContainer.tone(scheme), 4.5)
      }
      if _isMonochrome(scheme) {
        return scheme.isDark ? 0 : 100
      }
      return scheme.isDark ? 90 : 10
    },
    background: { scheme in
      return MaterialDynamicColors.primaryContainer
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let inversePrimary: DynamicColor = DynamicColor(
    name: "inverse_primary",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      return scheme.isDark ? 40 : 80
    },
    background: { scheme in
      return MaterialDynamicColors.inverseSurface
    },
    contrastCurve: ContrastCurve(3, 4.5, 7, 11)
  )

  static let secondary: DynamicColor = DynamicColor(
    name: "secondary",
    palette: { scheme in
      return scheme.secondaryPalette
    },
    tone: { scheme in
      return scheme.isDark ? 80 : 40
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(3, 4.5, 7, 11),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.secondaryContainer,
        MaterialDynamicColors.secondary, 15, polarity: TonePolarity.nearer, stayTogether: false)
    }
  )

  static let onSecondary: DynamicColor = DynamicColor(
    name: "on_secondary",
    palette: { scheme in
      return scheme.secondaryPalette
    },
    tone: { scheme in
      if _isMonochrome(scheme) {
        return scheme.isDark ? 10 : 100
      } else {
        return scheme.isDark ? 20 : 100
      }
    },
    background: { scheme in
      return MaterialDynamicColors.secondary
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let secondaryContainer: DynamicColor = DynamicColor(
    name: "secondary_container",
    palette: { scheme in
      return scheme.secondaryPalette
    },
    tone: { scheme in
      let initialTone: Double = scheme.isDark ? 30 : 90
      if _isMonochrome(scheme) {
        return scheme.isDark ? 30 : 85
      }
      if !_isFidelity(scheme) {
        return initialTone
      }
      var answer = _findDesiredChromaByTone(
        scheme.secondaryPalette.hue, scheme.secondaryPalette.chroma, initialTone,
        scheme.isDark ? false : true)
      answer = _performAlbers(scheme.secondaryPalette.getHct(answer), scheme)
      return answer
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.secondaryContainer,
        MaterialDynamicColors.secondary, 15, polarity: TonePolarity.nearer, stayTogether: false)
    }
  )

  static let onSecondaryContainer: DynamicColor = DynamicColor(
    name: "on_secondary_container",
    palette: { scheme in
      return scheme.secondaryPalette
    },
    tone: { scheme in
      if !_isFidelity(scheme) {
        return scheme.isDark ? 90 : 10
      }
      return DynamicColor.foregroundTone(
        MaterialDynamicColors.secondaryContainer.tone(scheme), 4.5)
    },
    background: { scheme in
      return MaterialDynamicColors.secondaryContainer
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let tertiary: DynamicColor = DynamicColor(
    name: "tertiary",
    palette: { scheme in
      return scheme.tertiaryPalette
    },
    tone: { scheme in
      if _isMonochrome(scheme) {
        return scheme.isDark ? 90 : 25
      }
      return scheme.isDark ? 80 : 40
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(3, 4.5, 7, 11),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.tertiaryContainer, MaterialDynamicColors.tertiary,
        15, polarity: TonePolarity.nearer, stayTogether: false)
    }
  )

  static let onTertiary: DynamicColor = DynamicColor(
    name: "on_tertiary",
    palette: { scheme in
      return scheme.tertiaryPalette
    },
    tone: { scheme in
      if _isMonochrome(scheme) {
        return scheme.isDark ? 10 : 90
      }
      return scheme.isDark ? 20 : 100
    },
    background: { scheme in
      return MaterialDynamicColors.tertiary
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let tertiaryContainer: DynamicColor = DynamicColor(
    name: "tertiary_container",
    palette: { scheme in
      return scheme.tertiaryPalette
    },
    tone: { scheme in
      if _isMonochrome(scheme) {
        return scheme.isDark ? 60 : 49
      }
      if !_isFidelity(scheme) {
        return scheme.isDark ? 30 : 90
      }
      let albersTone =
        _performAlbers(scheme.tertiaryPalette.getHct(scheme.sourceColorHct.tone), scheme)
      let proposedHct = scheme.tertiaryPalette.getHct(albersTone)
      return DislikeAnalyzer.fixIfDisliked(proposedHct).tone
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.tertiaryContainer, MaterialDynamicColors.tertiary,
        15, polarity: TonePolarity.nearer, stayTogether: false)
    }
  )

  static let onTertiaryContainer: DynamicColor = DynamicColor(
    name: "on_tertiary_container",
    palette: { scheme in
      return scheme.tertiaryPalette
    },
    tone: { scheme in
      if _isMonochrome(scheme) {
        return scheme.isDark ? 0 : 100
      }
      if !_isFidelity(scheme) {
        return scheme.isDark ? 90 : 10
      }
      return DynamicColor.foregroundTone(
        MaterialDynamicColors.tertiaryContainer.tone(scheme), 4.5)
    },
    background: { scheme in
      return MaterialDynamicColors.tertiaryContainer
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let error: DynamicColor = DynamicColor(
    name: "error",
    palette: { scheme in
      return scheme.errorPalette
    },
    tone: { scheme in
      return scheme.isDark ? 80 : 40
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(3, 4.5, 7, 11),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.errorContainer, MaterialDynamicColors.error, 15,
        polarity: TonePolarity.nearer, stayTogether: false)
    }
  )

  static let onError: DynamicColor = DynamicColor(
    name: "on_error",
    palette: { scheme in
      return scheme.errorPalette
    },
    tone: { scheme in
      return scheme.isDark ? 20 : 100
    },
    background: { scheme in
      return MaterialDynamicColors.error
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let errorContainer: DynamicColor = DynamicColor(
    name: "error_container",
    palette: { scheme in
      return scheme.errorPalette
    },
    tone: { scheme in
      return scheme.isDark ? 30 : 90
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.errorContainer, MaterialDynamicColors.error, 15,
        polarity: TonePolarity.nearer, stayTogether: false)
    }
  )

  static let onErrorContainer: DynamicColor = DynamicColor(
    name: "on_error_container",
    palette: { scheme in
      return scheme.errorPalette
    },
    tone: { scheme in
      return scheme.isDark ? 90 : 10
    },
    background: { scheme in
      return MaterialDynamicColors.errorContainer
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let primaryFixed: DynamicColor = DynamicColor(
    name: "primary_fixed",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 40.0 : 90.0
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.primaryFixed,
        MaterialDynamicColors.primaryFixedDim, 10, polarity: TonePolarity.lighter,
        stayTogether: true)
    }
  )

  static let primaryFixedDim: DynamicColor = DynamicColor(
    name: "primary_fixed_dim",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 30.0 : 80.0
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.primaryFixed,
        MaterialDynamicColors.primaryFixedDim, 10, polarity: TonePolarity.lighter,
        stayTogether: true)
    }
  )

  static let onPrimaryFixed: DynamicColor = DynamicColor(
    name: "on_primary_fixed",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 100.0 : 10.0
    },
    background: { scheme in
      return MaterialDynamicColors.primaryFixedDim
    },
    secondBackground: { scheme in
      return MaterialDynamicColors.primaryFixed
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let onPrimaryFixedVariant: DynamicColor = DynamicColor(
    name: "on_primary_fixed_variant",
    palette: { scheme in
      return scheme.primaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 90.0 : 30.0
    },
    background: { scheme in
      return MaterialDynamicColors.primaryFixedDim
    },
    secondBackground: { scheme in
      return MaterialDynamicColors.primaryFixed
    },
    contrastCurve: ContrastCurve(3, 4.5, 7, 11)
  )

  static let secondaryFixed: DynamicColor = DynamicColor(
    name: "secondary_fixed",
    palette: { scheme in
      return scheme.secondaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 80.0 : 90.0
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.secondaryFixed,
        MaterialDynamicColors.secondaryFixedDim, 10, polarity: TonePolarity.lighter,
        stayTogether: true)
    }
  )

  static let secondaryFixedDim: DynamicColor = DynamicColor(
    name: "secondary_fixed_dim",
    palette: { scheme in
      return scheme.secondaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 70.0 : 80.0
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.secondaryFixed,
        MaterialDynamicColors.secondaryFixedDim, 10, polarity: TonePolarity.lighter,
        stayTogether: true)
    }
  )

  static let onSecondaryFixed: DynamicColor = DynamicColor(
    name: "on_secondary_fixed",
    palette: { scheme in
      return scheme.secondaryPalette
    },
    tone: { scheme in
      return 10.0
    },
    background: { scheme in
      return MaterialDynamicColors.secondaryFixedDim
    },
    secondBackground: { scheme in
      return MaterialDynamicColors.secondaryFixed
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let onSecondaryFixedVariant: DynamicColor = DynamicColor(
    name: "on_secondary_fixed_variant",
    palette: { scheme in
      return scheme.secondaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 25.0 : 30.0
    },
    background: { scheme in
      return MaterialDynamicColors.secondaryFixedDim
    },
    secondBackground: { scheme in
      return MaterialDynamicColors.secondaryFixed
    },
    contrastCurve: ContrastCurve(3, 4.5, 7, 11)
  )

  static let tertiaryFixed: DynamicColor = DynamicColor(
    name: "tertiary_fixed",
    palette: { scheme in
      return scheme.tertiaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 40.0 : 90.0
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.tertiaryFixed,
        MaterialDynamicColors.tertiaryFixedDim, 10, polarity: TonePolarity.lighter,
        stayTogether: true)
    }
  )

  static let tertiaryFixedDim: DynamicColor = DynamicColor(
    name: "tertiary_fixed_dim",
    palette: { scheme in
      return scheme.tertiaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 30.0 : 80.0
    },
    isBackground: true,
    background: { scheme in
      return highestSurface(scheme)
    },
    contrastCurve: ContrastCurve(1, 1, 3, 7),
    toneDeltaPair: { scheme in
      return ToneDeltaPair(
        MaterialDynamicColors.tertiaryFixed,
        MaterialDynamicColors.tertiaryFixedDim, 10, polarity: TonePolarity.lighter,
        stayTogether: true)
    }
  )

  static let onTertiaryFixed: DynamicColor = DynamicColor(
    name: "on_tertiary_fixed",
    palette: { scheme in
      return scheme.tertiaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 100.0 : 10.0
    },
    background: { scheme in
      return MaterialDynamicColors.tertiaryFixedDim
    },
    secondBackground: { scheme in
      return MaterialDynamicColors.tertiaryFixed
    },
    contrastCurve: ContrastCurve(4.5, 7, 11, 21)
  )

  static let onTertiaryFixedVariant: DynamicColor = DynamicColor(
    name: "on_tertiary_fixed_variant",
    palette: { scheme in
      return scheme.tertiaryPalette
    },
    tone: { scheme in
      return _isMonochrome(scheme) ? 90.0 : 30.0
    },
    background: { scheme in
      return MaterialDynamicColors.tertiaryFixedDim
    },
    secondBackground: { scheme in
      return MaterialDynamicColors.tertiaryFixed
    },
    contrastCurve: ContrastCurve(3, 4.5, 7, 11)
  )

  static private func _findDesiredChromaByTone(
    _ hue: Double, _ chroma: Double, _ tone: Double, _ byDecreasingTone: Bool
  ) -> Double {
    var answer = tone

    var closestToChroma = Hct.from(hue, chroma, tone)
    if closestToChroma.chroma < chroma {
      var chromaPeak: Double = closestToChroma.chroma
      while closestToChroma.chroma < chroma {
        answer += byDecreasingTone ? -1 : 1
        let potentialSolution = Hct.from(hue, chroma, answer)
        if chromaPeak > potentialSolution.chroma {
          break
        }
        if abs(potentialSolution.chroma - chroma) < 0.4 {
          break
        }

        let potentialDelta = abs(potentialSolution.chroma - chroma)
        let currentDelta = abs(closestToChroma.chroma - chroma)
        if potentialDelta < currentDelta {
          closestToChroma = potentialSolution
        }
        chromaPeak = max(chromaPeak, potentialSolution.chroma)
      }
    }

    return answer
  }

  static private func _performAlbers(_ prealbers: Hct, _ scheme: DynamicScheme) -> Double {
    let albersd = prealbers.inViewingConditions(viewingConditionsForAlbers(scheme))
    if DynamicColor.tonePrefersLightForeground(prealbers.tone)
      && !DynamicColor.toneAllowsLightForeground(albersd.tone)
    {
      return DynamicColor.enableLightForeground(prealbers.tone)
    } else {
      return DynamicColor.enableLightForeground(albersd.tone)
    }
  }
}
