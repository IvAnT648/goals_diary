
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../profile/screen.dart';
import 'bloc.dart';

class SearchUserScreen extends StatefulWidget {
  static const String id = '/searchUser';

  const SearchUserScreen({Key? key}) : super(key: key);

  @override
  _SearchUserScreenState createState() => _SearchUserScreenState();
}

class _SearchUserScreenState extends State<SearchUserScreen> {
  static const double _listItemPadding = 20;

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReturnableTopBar(
        title: Container(
          child: TextField(
            controller: _searchController,
            autofocus: true,
            decoration: InputDecoration(
              labelText: S.of(context).screenSearchUserFieldPlaceholder,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              isDense: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
            onChanged: (text) {
              context.read<SearchUserBloc>().search(text);
            },
          ),
        ),
      ),
      body: BlocBuilder<SearchUserBloc, SearchUserState>(
        builder: (context, state) {
          if (state is SearchedSearchUserState) {
            return ListView.separated(
              itemCount: state.list.length,
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _listItemPadding + 20,
                ),
                child: HorizontalLine(
                  thickness: 1,
                  color: AppColors.gray[20],
                ),
              ),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  left: _listItemPadding,
                  right: _listItemPadding,
                  top: index == 0 ? 10 : 0,
                ),
                child: SubscriptionListItem(
                  user: state.list[index],
                  onTap: () {
                    Navigation.to(
                        ProfileScreen.idOther,
                        params: {
                          ProfileScreen.userArg: state.list[index],
                        }
                    );
                  },
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}

