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

/// A playful theme - the source color's hue does not appear in the theme.
class SchemeRainbow: DynamicScheme {
  init(sourceColorHct: Hct, isDark: Bool, contrastLevel: Double) {
    super.init(
      sourceColorArgb: sourceColorHct.toInt(),
      variant: Variant.rainbow,
      isDark: isDark,
      contrastLevel: contrastLevel,
      primaryPalette: TonalPalette.of(sourceColorHct.hue, 48.0),
      secondaryPalette: TonalPalette.of(sourceColorHct.hue, 16.0),
      tertiaryPalette: TonalPalette.of(
        MathUtils.sanitizeDegreesDouble(sourceColorHct.hue + 60.0), 24.0),
      neutralPalette: TonalPalette.of(sourceColorHct.hue, 0.0),
      neutralVariantPalette: TonalPalette.of(sourceColorHct.hue, 0.0)
    )
  }
}
