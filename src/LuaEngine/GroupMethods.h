/*
* Copyright (C) 2010 - 2014 Eluna Lua Engine <http://emudevs.com/>
* This program is free software licensed under GPL version 3
* Please see the included DOCS/LICENSE.md for more information
*/

#ifndef GROUPMETHODS_H
#define GROUPMETHODS_H

namespace LuaGroup
{
    /**
     * Returns 'true' if the player is the [Group] leader
     *
     * @param uint64 guid : guid of a possible leader
     * @return bool isLeader
     */
    int IsLeader(lua_State* L, Group* group)
    {
        uint64 guid = Eluna::CHECKVAL<uint64>(L, 2);
        Eluna::Push(L, group->IsLeader(ObjectGuid(guid)));
        return 1;
    }

    /**
     * Returns 'true' if the [Group] is full
     *
     * @return bool isFull
     */
    int IsFull(lua_State* L, Group* group)
    {
        Eluna::Push(L, group->IsFull());
        return 1;
    }

    /**
     * Returns 'true' if the [Group] is a raid [Group]
     *
     * @return bool isRaid
     */
    int IsRaidGroup(lua_State* L, Group* group)
    {
        Eluna::Push(L, group->isRaidGroup());
        return 1;
    }

    /**
     * Returns 'true' if the [Group] is a battleground [Group]
     *
     * @return bool isBG
     */
    int IsBGGroup(lua_State* L, Group* group)
    {
        Eluna::Push(L, group->isBGGroup());
        return 1;
    }

    /**
     * Returns 'true' if the [Player] is a member of this [Group]
     *
     * @param [Player] player : [Player] to check
     * @return bool isMember
     */
    int IsMember(lua_State* L, Group* group)
    {
        Player* player = Eluna::CHECKOBJ<Player>(L, 2);
        Eluna::Push(L, group->IsMember(player->GET_GUID()));
        return 1;
    }

    /**
     * Returns 'true' if the [Player] is an assistant of this [Group]
     *
     * @param [Player] player : [Player] to check
     * @return bool isAssistant
     */
    int IsAssistant(lua_State* L, Group* group)
    {
        Player* player = Eluna::CHECKOBJ<Player>(L, 2);

        Eluna::Push(L, group->IsAssistant(player->GET_GUID()));
        return 1;
    }

    /**
     * Returns 'true' if the [Player]s are in the same subgroup in this [Group]
     *
     * @param [Player] player1 : first [Player] to check
     * @param [Player] player2 : second [Player] to check
     * @return bool sameSubGroup
     */
    int SameSubGroup(lua_State* L, Group* group)
    {
        Player* player1 = Eluna::CHECKOBJ<Player>(L, 2);
        Player* player2 = Eluna::CHECKOBJ<Player>(L, 3);
        Eluna::Push(L, group->SameSubGroup(player1, player2));
        return 1;
    }

    /**
     * Returns 'true' if the subgroup has free slots in this [Group]
     *
     * @param uint8 subGroup : subGroup ID to check
     * @return bool hasFreeSlot
     */
    int HasFreeSlotSubGroup(lua_State* L, Group* group)
    {
        uint8 subGroup = Eluna::CHECKVAL<uint8>(L, 2);
        Eluna::Push(L, group->HasFreeSlotSubGroup(subGroup));
        return 1;
    }

    /**
     * Returns 'true' if the [Group] invite was successful
     *
     * @param [Player] player : [Player] to invite
     * @return bool invited
     */
    int AddInvite(lua_State* L, Group* group)
    {
        Player* player = Eluna::CHECKOBJ<Player>(L, 2);

        Eluna::Push(L, group->AddInvite(player));
        return 1;
    }

    /*int IsLFGGroup(lua_State* L, Group* group) // TODO: Implementation
    {
    Eluna::Push(L, group->isLFGGroup());
    return 1;
    }*/

    /*int IsBFGroup(lua_State* L, Group* group) // TODO: Implementation
    {
    Eluna::Push(L, group->isBFGroup());
    return 1;
    }*/

    /**
     * Returns a table with the [Player]s in this [Group]
     *
     * @return table groupPlayers : table of [Player]s
     */
    int GetMembers(lua_State* L, Group* group)
    {
        lua_newtable(L);
        int tbl = lua_gettop(L);
        uint32 i = 0;

        for (GroupReference* itr = group->GetFirstMember(); itr; itr = itr->next())
        {
#ifndef TRINITY
            Player* member = itr->getSource();
#else
            Player* member = itr->GetSource();
#endif

            if (!member || !member->GetSession())
                continue;

            ++i;
            Eluna::Push(L, i);
            Eluna::Push(L, member);
            lua_settable(L, tbl);
        }

        lua_settop(L, tbl); // push table to top of stack
        return 1;
    }

    /**
     * Returns [Group] leader GUID
     *
     * @return uint64 leaderGUID
     */
    int GetLeaderGUID(lua_State* L, Group* group)
    {
#ifndef TRINITY
        Eluna::Push(L, group->GetLeaderGuid());
#else
        Eluna::Push(L, group->GetLeaderGUID());
#endif
        return 1;
    }

    /**
     * Finds and returns a [Group] leader by their GUID if logged in
     *
     * @return [Player] leader
     */
    int GetLeader(lua_State* L, Group* group)
    {
#ifndef TRINITY
        Eluna::Push(L, eObjectAccessor->FindPlayer(group->GetLeaderGuid()));
#else
        Eluna::Push(L, eObjectAccessor->FindPlayer(group->GetLeaderGUID()));
#endif
        return 1;
    }

    /**
     * Returns the [Group]'s GUID
     *
     * @return uint64 groupGUID
     */
    int GetGUID(lua_State* L, Group* group)
    {
#ifdef CLASSIC
        Eluna::Push(L, group->GetId());
#else
        Eluna::Push(L, group->GET_GUID());
#endif
        return 1;
    }

    /**
     * Returns a [Group] member's GUID by their name
     *
     * @param string name : the [Player]'s name
     * @return uint64 memberGUID
     */
    int GetMemberGUID(lua_State* L, Group* group)
    {
        const char* name = Eluna::CHECKVAL<const char*>(L, 2);
#ifndef TRINITY
        Eluna::Push(L, group->GetMemberGuid(name));
#else
        Eluna::Push(L, group->GetMemberGUID(name));
#endif
        return 1;
    }

    /**
     * Returns the member count of this [Group]
     *
     * @return uint32 memberCount
     */
    int GetMembersCount(lua_State* L, Group* group)
    {
        Eluna::Push(L, group->GetMembersCount());
        return 1;
    }

    /**
     * Returns the [Player]'s subgroup ID of this [Group]
     *
     * @param [Player] player : the [Player] to check
     * @return uint8 subGroupID
     */
    int GetMemberGroup(lua_State* L, Group* group)
    {
        Player* player = Eluna::CHECKOBJ<Player>(L, 2);

        Eluna::Push(L, group->GetMemberGroup(player->GET_GUID()));
        return 1;
    }

    /**
     * Sets the leader of this [Group]
     *
     * @param [Player] leader : the [Player] leader to change
     */
    int SetLeader(lua_State* L, Group* group)
    {
        Player* leader = Eluna::CHECKOBJ<Player>(L, 2);

        group->ChangeLeader(leader->GET_GUID());
        return 0;
    }

    /**
     * Sends a specified [WorldPacket] to this [Group]
     *
     * @param [WorldPacket] packet : the [WorldPacket] to send
     * @param bool ignorePlayersInBg : ignores [Player]s in a battleground
     * @param uint64 ignore : ignore a [Player] by their GUID
     */
    int SendPacket(lua_State* L, Group* group)
    {
        WorldPacket* data = Eluna::CHECKOBJ<WorldPacket>(L, 2);
        bool ignorePlayersInBg = Eluna::CHECKVAL<bool>(L, 3);
        uint64 ignore = Eluna::CHECKVAL<uint64>(L, 4);

        group->BroadcastPacket(data, ignorePlayersInBg, -1, ObjectGuid(ignore));
        return 0;
    }

    /**
     * Removes a member from this [Group] and returns 'true' if successful
     *
     * <pre>
     * enum RemoveMethod
     * {
     *     GROUP_REMOVEMETHOD_DEFAULT  = 0,
     *     GROUP_REMOVEMETHOD_KICK     = 1,
     *     GROUP_REMOVEMETHOD_LEAVE    = 2,
     *     GROUP_REMOVEMETHOD_KICK_LFG = 3
     * };
     * </pre>
     *
     * @param [Player] player : the [Player] to remove
     * @param [RemoveMethod] method : method used to remove the player
     * @return bool removed
     */
    int RemoveMember(lua_State* L, Group* group)
    {
        Player* player = Eluna::CHECKOBJ<Player>(L, 2);
        uint32 method = Eluna::CHECKVAL<uint32>(L, 3, 0);

#ifndef TRINITY
        Eluna::Push(L, group->RemoveMember(player->GET_GUID(), method));
#else
        Eluna::Push(L, group->RemoveMember(player->GET_GUID(), (RemoveMethod)method));
#endif
        return 1;
    }

    /**
     * Disbands this [Group]
     *
     */
    int Disband(lua_State* /*L*/, Group* group)
    {
        group->Disband();
        return 0;
    }

    /**
     * Converts this [Group] to a raid [Group]
     *
     */
    int ConvertToRaid(lua_State* /*L*/, Group* group)
    {
        group->ConvertToRaid();
        return 0;
    }

    /**
     * Sets the member's subGroup
     *
     * @param [Player] player : [Player] to move
     * @param uint8 groupID : the subGroup's ID
     */
    int SetMembersGroup(lua_State* L, Group* group)
    {
        Player* player = Eluna::CHECKOBJ<Player>(L, 2);
        uint8 groupID = Eluna::CHECKVAL<uint8>(L, 3);

        group->ChangeMembersGroup(player->GET_GUID(), groupID);
        return 0;
    }

    /**
     * Sets the target icon of an object for the [Group]
     *
     * @param uint8 icon : the icon (Skull, Square, etc)
     * @param uint64 target : GUID of the icon target, 0 is to clear the icon
     * @param uint64 setter : GUID of the icon setter
     */
    int SetTargetIcon(lua_State* L, Group* group)
    {
        uint8 icon = Eluna::CHECKVAL<uint8>(L, 2);
        uint64 target = Eluna::CHECKVAL<uint64>(L, 3);
        uint64 setter = Eluna::CHECKVAL<uint64>(L, 4, 0);

        if (icon >= TARGETICONCOUNT)
            return luaL_argerror(L, 2, "valid target icon expected");

#if (defined(CLASSIC) || defined(TBC))
        group->SetTargetIcon(icon, ObjectGuid(target));
#else
        group->SetTargetIcon(icon, ObjectGuid(setter), ObjectGuid(target));
#endif
        return 0;
    }

    /*int ConvertToLFG(lua_State* L, Group* group) // TODO: Implementation
    {
    group->ConvertToLFG();
    return 0;
    }*/
};
#endif
