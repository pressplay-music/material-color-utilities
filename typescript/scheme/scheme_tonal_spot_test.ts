/**
 * @license
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'jasmine';

import {MaterialDynamicColors} from '../dynamiccolor/material_dynamic_colors.js';
import {Hct} from '../hct/hct.js';
import {customMatchers} from '../utils/test_utils.js';

import {SchemeTonalSpot} from './scheme_tonal_spot.js';

beforeEach(() => {
  jasmine.addMatchers(customMatchers);
});

describe('scheme tonal spot test', () => {
  it('keyColors', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 0.0);

    expect(MaterialDynamicColors.primaryPaletteKeyColor.getArgb(scheme)).matchesColor(0xff6e72ac);
    expect(MaterialDynamicColors.secondaryPaletteKeyColor.getArgb(scheme)).matchesColor(0xff75758b);
    expect(MaterialDynamicColors.tertiaryPaletteKeyColor.getArgb(scheme)).matchesColor(0xff936b84);
    expect(MaterialDynamicColors.neutralPaletteKeyColor.getArgb(scheme)).matchesColor(0xff77767d);
    expect(MaterialDynamicColors.neutralVariantPaletteKeyColor.getArgb(scheme)).matchesColor(0xff777680);
  });

  it('lightTheme_minContrast_primary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, -1.0);
    expect(MaterialDynamicColors.primary.getArgb(scheme))
        .matchesColor(0xff6c70aa);
  });

  it('lightTheme_standardContrast_primary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 0.0);
    expect(MaterialDynamicColors.primary.getArgb(scheme))
        .matchesColor(0xff555992);
  });

  it('lightTheme_maxContrast_primary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 1.0);
    expect(MaterialDynamicColors.primary.getArgb(scheme))
        .matchesColor(0xff181c51);
  });

  it('lightTheme_minContrast_primaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, -1.0);
    expect(MaterialDynamicColors.primaryContainer.getArgb(scheme))
        .matchesColor(0xffd5d6ff);
  });

  it('lightTheme_standardContrast_primaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 0.0);
    expect(MaterialDynamicColors.primaryContainer.getArgb(scheme))
        .matchesColor(0xffe0e0ff);
  });

  it('lightTheme_maxContrast_primaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 1.0);
    expect(MaterialDynamicColors.primaryContainer.getArgb(scheme))
        .matchesColor(0xff3a3e74);
  });

  it('lightTheme_minContrast_onPrimaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, -1.0);
    expect(MaterialDynamicColors.onPrimaryContainer.getArgb(scheme))
        .matchesColor(0xff555992);
  });

  it('lightTheme_standardContrast_onPrimaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 0.0);
    expect(MaterialDynamicColors.onPrimaryContainer.getArgb(scheme))
        .matchesColor(0xff11144b);
  });

  it('lightTheme_maxContrast_onPrimaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 1.0);
    expect(MaterialDynamicColors.onPrimaryContainer.getArgb(scheme))
        .matchesColor(0xffffffff);
  });

  it('lightTheme_minContrast_surface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, -1.0);
    expect(MaterialDynamicColors.surface.getArgb(scheme))
        .matchesColor(0xfffbf8ff);
  });

  it('lightTheme_standardContrast_surface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 0.0);
    expect(MaterialDynamicColors.surface.getArgb(scheme))
        .matchesColor(0xfffbf8ff);
  });

  it('lightTheme_maxContrast_surface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 1.0);
    expect(MaterialDynamicColors.surface.getArgb(scheme))
        .matchesColor(0xfffbf8ff);
  });

  it('lightTheme_minContrast_onSurface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, -1.0);
    expect(MaterialDynamicColors.onSurface.getArgb(scheme))
        .matchesColor(0xff5f5e65);
  });

  it('lightTheme_standardContrast_onSurface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 0.0);
    expect(MaterialDynamicColors.onSurface.getArgb(scheme))
        .matchesColor(0xff1b1b21);
  });

  it('lightTheme_maxContrast_onSurface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 1.0);
    expect(MaterialDynamicColors.onSurface.getArgb(scheme))
        .matchesColor(0xff000000);
  });

  it('lightTheme_minContrast_onSecondary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, -1.0);
    expect(MaterialDynamicColors.onSecondary.getArgb(scheme))
        .matchesColor(0xfffffbff);
  });

  it('lightTheme_standardContrast_onSecondary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 0.0);
    expect(MaterialDynamicColors.onSecondary.getArgb(scheme))
        .matchesColor(0xffffffff);
  });

  it('lightTheme_maxContrast_onSecondary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 1.0);
    expect(MaterialDynamicColors.onSecondary.getArgb(scheme))
        .matchesColor(0xffffffff);
  });

  it('lightTheme_minContrast_onTertiary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, -1.0);
    expect(MaterialDynamicColors.onTertiary.getArgb(scheme))
        .matchesColor(0xfffffbff);
  });

  it('lightTheme_standardContrast_onTertiary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 0.0);
    expect(MaterialDynamicColors.onTertiary.getArgb(scheme))
        .matchesColor(0xffffffff);
  });

  it('lightTheme_maxContrast_onTertiary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 1.0);
    expect(MaterialDynamicColors.onTertiary.getArgb(scheme))
        .matchesColor(0xffffffff);
  });

  it('lightTheme_minContrast_onError', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, -1.0);
    expect(MaterialDynamicColors.onError.getArgb(scheme))
        .matchesColor(0xfffffbff);
  });

  it('lightTheme_standardContrast_onError', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 0.0);
    expect(MaterialDynamicColors.onError.getArgb(scheme))
        .matchesColor(0xffffffff);
  });

  it('lightTheme_maxContrast_onError', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), false, 1.0);
    expect(MaterialDynamicColors.onError.getArgb(scheme))
        .matchesColor(0xffffffff);
  });

  it('darkTheme_minContrast_primary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, -1.0);
    expect(MaterialDynamicColors.primary.getArgb(scheme))
        .matchesColor(0xff888cc8);
  });

  it('darkTheme_standardContrast_primary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 0.0);
    expect(MaterialDynamicColors.primary.getArgb(scheme))
        .matchesColor(0xffbec2ff);
  });

  it('darkTheme_maxContrast_primary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 1.0);
    expect(MaterialDynamicColors.primary.getArgb(scheme))
        .matchesColor(0xfffdf9ff);
  });

  it('darkTheme_minContrast_primaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, -1.0);
    expect(MaterialDynamicColors.primaryContainer.getArgb(scheme))
        .matchesColor(0xff31356b);
  });

  it('darkTheme_standardContrast_primaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 0.0);
    expect(MaterialDynamicColors.primaryContainer.getArgb(scheme))
        .matchesColor(0xff3e4278);
  });

  it('darkTheme_maxContrast_primaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 1.0);
    expect(MaterialDynamicColors.primaryContainer.getArgb(scheme))
        .matchesColor(0xffc4c6ff);
  });

  it('darkTheme_minContrast_onPrimaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, -1.0);
    expect(MaterialDynamicColors.onPrimaryContainer.getArgb(scheme))
        .matchesColor(0xff9b9fdd);
  });

  it('darkTheme_standardContrast_onPrimaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 0.0);
    expect(MaterialDynamicColors.onPrimaryContainer.getArgb(scheme))
        .matchesColor(0xffe0e0ff);
  });

  it('darkTheme_maxContrast_onPrimaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 1.0);
    expect(MaterialDynamicColors.onPrimaryContainer.getArgb(scheme))
        .matchesColor(0xff000000);
  });

  it('darkTheme_minContrast_onTertiaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, -1.0);
    expect(MaterialDynamicColors.onTertiaryContainer.getArgb(scheme))
        .matchesColor(0xffc397b2);
  });

  it('darkTheme_standardContrast_onTertiaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 0.0);
    expect(MaterialDynamicColors.onTertiaryContainer.getArgb(scheme))
        .matchesColor(0xffffd8ee);
  });

  it('darkTheme_maxContrast_onTertiaryContainer', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 1.0);
    expect(MaterialDynamicColors.onTertiaryContainer.getArgb(scheme))
        .matchesColor(0xff000000);
  });

  it('darkTheme_minContrast_onSecondary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, -1.0);
    expect(MaterialDynamicColors.onSecondary.getArgb(scheme))
        .matchesColor(0xff27283b);
  });

  it('darkTheme_standardContrast_onSecondary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 0.0);
    expect(MaterialDynamicColors.onSecondary.getArgb(scheme))
        .matchesColor(0xff2e2f42);
  });

  it('darkTheme_maxContrast_onSecondary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 1.0);
    expect(MaterialDynamicColors.onSecondary.getArgb(scheme))
        .matchesColor(0xff000000);
  });

  it('darkTheme_minContrast_onTertiary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, -1.0);
    expect(MaterialDynamicColors.onTertiary.getArgb(scheme))
        .matchesColor(0xff3e1f34);
  });

  it('darkTheme_standardContrast_onTertiary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 0.0);
    expect(MaterialDynamicColors.onTertiary.getArgb(scheme))
        .matchesColor(0xff46263b);
  });

  it('darkTheme_maxContrast_onTertiary', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 1.0);
    expect(MaterialDynamicColors.onTertiary.getArgb(scheme))
        .matchesColor(0xff000000);
  });

  it('darkTheme_minContrast_onError', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, -1.0);
    expect(MaterialDynamicColors.onError.getArgb(scheme))
        .matchesColor(0xff5c0003);
  });

  it('darkTheme_standardContrast_onError', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 0.0);
    expect(MaterialDynamicColors.onError.getArgb(scheme))
        .matchesColor(0xff690005);
  });

  it('darkTheme_maxContrast_onError', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 1.0);
    expect(MaterialDynamicColors.onError.getArgb(scheme))
        .matchesColor(0xff000000);
  });

  it('darkTheme_minContrast_surface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, -1.0);
    expect(MaterialDynamicColors.surface.getArgb(scheme))
        .matchesColor(0xff131318);
  });

  it('darkTheme_standardContrast_surface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 0.0);
    expect(MaterialDynamicColors.surface.getArgb(scheme))
        .matchesColor(0xff131318);
  });

  it('darkTheme_maxContrast_surface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 1.0);
    expect(MaterialDynamicColors.surface.getArgb(scheme))
        .matchesColor(0xff131318);
  });

  it('darkTheme_minContrast_onSurface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, -1.0);
    expect(MaterialDynamicColors.onSurface.getArgb(scheme))
        .matchesColor(0xffa4a2a9);
  });

  it('darkTheme_standardContrast_onSurface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 0.0);
    expect(MaterialDynamicColors.onSurface.getArgb(scheme))
        .matchesColor(0xffe4e1e9);
  });

  it('darkTheme_maxContrast_onSurface', () => {
    const scheme = new SchemeTonalSpot(Hct.fromInt(0xff0000ff), true, 1.0);
    expect(MaterialDynamicColors.onSurface.getArgb(scheme))
        .matchesColor(0xffffffff);
  });
});
