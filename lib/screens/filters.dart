import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

// 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';


class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters  = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(

        title: Text('Filters'),
      ),

      body: Column(
          children: [
            SwitchListTile(
              value: activeFilters[Filter.glutenFree]!,
              onChanged: (isChecked) {
                ref.read(filtersProvider.notifier).setFilter(Filter.glutenFree, isChecked);
              },
              title: Text(
                'Gluten-free',
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(
                  color: Theme
                      .of(context)
                      .colorScheme
                      .onSurface,
                ),
              ),
              subtitle: Text(
                'Only include gluten-free meals.',
                style: Theme
                    .of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                  color: Theme
                      .of(context)
                      .colorScheme
                      .onSurface,
                ),
              ),
              activeThumbColor: Theme
                  .of(context)
                  .colorScheme
                  .tertiary,
              contentPadding: EdgeInsets.only(left: 34, right: 22),
            ), SwitchListTile(
              value: activeFilters[Filter.lactoseFree]!,
              onChanged: (isChecked) {
                ref.read(filtersProvider.notifier).setFilter(Filter.lactoseFree, isChecked);
              },
              title: Text(
                'Lactose-free',
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(
                  color: Theme
                      .of(context)
                      .colorScheme
                      .onSurface,
                ),
              ),
              subtitle: Text(
                'Only include lactose-free meals.',
                style: Theme
                    .of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                  color: Theme
                      .of(context)
                      .colorScheme
                      .onSurface,
                ),
              ),
              activeThumbColor: Theme
                  .of(context)
                  .colorScheme
                  .tertiary,
              contentPadding: EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        ),
      );
  }
}
